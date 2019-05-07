package controller.back;

import dto.ItemInfoDto;
import entity.ItemInfo;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.ItemService;
import util.LoginUtil;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/item")
public class ItemController {


    @Autowired
    private ItemService itemService;
    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/toAddItem")
    public ModelAndView toAddItem(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/item/addItem");
        }

        return modelAndView;
    }

    @RequestMapping("/addItem")
    public ModelAndView addItem(HttpSession session, ItemInfoDto itemInfoDto) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/item/listItem");
        }

        if (0 == itemService.have(itemInfoDto.getName())) {
            itemService.add(itemInfoDto);
            modelAndView.addObject("message", "添加成功");
        } else {
            modelAndView.addObject("message", "添加失败，名称重复");
        }

        return queryItem(modelAndView);
    }

    @RequestMapping("/delItem")
    public ModelAndView delItem(HttpSession session, @RequestParam("id") int id) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/item/listItem");
        }
        if (1 == itemService.del(id)) {
            modelAndView.addObject("message", "删除成功");
        } else {
            modelAndView.addObject("message", "删除失败");
        }
        return queryItem(modelAndView);
    }

    @RequestMapping("/toEditItem")
    public ModelAndView toEditItem(HttpSession session, @RequestParam("id") int id) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/item/editItem");
        }
        ItemInfo itemInfo = itemService.get(id);
        modelAndView.addObject("itemInfo", itemInfo);

        return modelAndView;
    }

    @RequestMapping("/editItem")
    public ModelAndView editItem(HttpSession session, ItemInfoDto itemInfoDto) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/item/listItem");
        }
        int haveItem = 0;
        if (!itemInfoDto.getOldName().equals(itemInfoDto.getName())) {
            haveItem = itemService.have(itemInfoDto.getName());
        }
        if (haveItem > 0) {
            modelAndView.addObject("message", "修改失败，名称重复");
            return queryItem(modelAndView);
        }

        int haveEdit = itemService.edit(itemInfoDto);
        if (haveEdit > 0) {
            modelAndView.addObject("message", "修改成功");
        } else {
            modelAndView.addObject("message", "修改失败");
        }
        return queryItem(modelAndView);
    }

    @RequestMapping("/listItem")
    public ModelAndView listItem(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            return queryItem(modelAndView);
        }
        return modelAndView;
    }

    private ModelAndView queryItem(ModelAndView modelAndView) {
        List<ItemInfoDto> list = itemService.list();
        if (0 == list.size()) {
            modelAndView.addObject("message", "查询列表为空");
        }
        modelAndView.addObject("itemList", list);
        modelAndView.setViewName("back/item/listItem");
        return modelAndView;
    }

}
