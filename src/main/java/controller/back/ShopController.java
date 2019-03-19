package controller.back;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import util.LoginUtil;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/shop")
public class ShopController {

    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/toAddShop")
    public ModelAndView toAddShop(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/shop/addShop");
        }
        return modelAndView;
    }

    @RequestMapping("/addShop")
    public ModelAndView addShop(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/shop/listShop");
        }
        return modelAndView;
    }

    @RequestMapping("/delShop")
    public ModelAndView delShop(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/shop/listShop");
        }
        return modelAndView;
    }

    @RequestMapping("/toEditShop")
    public ModelAndView toEditShop(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/shop/editShop");
        }
        return modelAndView;
    }

    @RequestMapping("/editShop")
    public ModelAndView editShop(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/shop/listShop");
        }
        return modelAndView;
    }

    @RequestMapping("/listShop")
    public ModelAndView listShop(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/shop/listShop");
        }
        return modelAndView;
    }
}
