package controller.front;

import dto.ItemInfoDto;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.ItemService;
import service.UserService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/shop")
public class ShopController {

    @Autowired
    private ItemService itemService;
    @Autowired
    private UserService userService;

    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/listShop")
    public ModelAndView listShop(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        int userId = (Integer) session.getAttribute("userId");
        return queryItem(modelAndView, userId);
    }


    @RequestMapping("/buyItem")
    public ModelAndView buyItem(@RequestParam("id") int id, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        int userId = (int) session.getAttribute("userId");
        userService.costUserIntegral(userId, id);
        modelAndView.addObject("message", "兑换成功，请到订单管理中查看");
        return queryItem(modelAndView, userId);
    }

    @RequestMapping("/listOrder")
    public ModelAndView listOrder(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        int userId = (int) session.getAttribute("userId");
        return queryOrder(modelAndView, userId);
    }

    @RequestMapping("/delOrder")
    public ModelAndView delOrder(@RequestParam("id") int id, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        int userId = (int) session.getAttribute("userId");
        userService.delOrder(id);
        modelAndView.addObject("message", "删除成功");
        return queryOrder(modelAndView, userId);
    }

    private ModelAndView queryItem(ModelAndView modelAndView, int userId) {
        modelAndView.setViewName("front/user/listShop");
        List<ItemInfoDto> itemInfoDtoList = itemService.list();
        modelAndView.addObject("itemInfoDtoList", itemInfoDtoList);
        int integral = userService.getUserIntegral(userId);
        modelAndView.addObject("integral", integral);
        return modelAndView;
    }

    private ModelAndView queryOrder(ModelAndView modelAndView, int userId) {
        List<ItemInfoDto> itemInfoDtoList = userService.getUserOrder(userId);
        modelAndView.addObject("itemInfoDtoList", itemInfoDtoList);
        modelAndView.setViewName("front/user/listOrder");
        return modelAndView;
    }
}
