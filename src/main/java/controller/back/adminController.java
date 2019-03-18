package controller.back;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class adminController {

    @RequestMapping("/toAdminLogin")
    public ModelAndView toAdminLogin(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/adminLogin");
        return modelAndView;
    }

    @RequestMapping("/adminLogin")
    public ModelAndView adminLogin(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/adminIndex");
        return modelAndView;
    }
}
