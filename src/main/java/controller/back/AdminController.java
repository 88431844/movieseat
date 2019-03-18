package controller.back;

import com.alibaba.fastjson.JSON;
import dto.AdminLoginDto;
import org.apache.commons.logging.Log;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/toAdminLogin")
    public ModelAndView toAdminLogin(){
        log.info("--- AdminController toAdminLogin");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/adminLogin");
        return modelAndView;
    }

    @RequestMapping("/adminLogin")
    public ModelAndView adminLogin(AdminLoginDto adminLoginDto) {
        log.info("--- AdminController adminLoginDto : " + JSON.toJSONString(adminLoginDto));
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/adminIndex");
        return modelAndView;
    }
}
