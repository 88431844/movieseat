package util;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

public class LoginUtil {

    public static ModelAndView checkAdminLogin(HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        String adminUserName = (String) session.getAttribute("adminUserName");
        if (null == adminUserName) {
            modelAndView.addObject("message", "请重新登录");
            modelAndView.setViewName("back/adminLogin");
        }
        return modelAndView;
    }
}
