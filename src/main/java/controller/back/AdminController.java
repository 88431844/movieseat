package controller.back;

import com.alibaba.fastjson.JSON;
import dto.AdminLoginDto;
import entity.Madmin;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.AdminService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private Logger log = Logger.getLogger(this.getClass());

    @Autowired
    private AdminService adminService;

    @RequestMapping("/toAdminLogin")
    public ModelAndView toAdminLogin(){
        log.info("--- AdminController toAdminLogin");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/adminLogin");
        return modelAndView;
    }

    @RequestMapping("/adminLogin")
    public ModelAndView adminLogin(AdminLoginDto adminLoginDto, HttpSession session) {
        log.info("--- AdminController adminLoginDto : " + JSON.toJSONString(adminLoginDto));
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/adminIndex");

        Madmin admin = adminService.adminLogin(adminLoginDto);
        if (null != admin && admin.getUsername() != null){
            session.setAttribute("adminUserName", admin.getUsername());
        }
        else {
            modelAndView.setViewName("back/adminLogin");
            modelAndView.addObject("message","登录失败");
        }

        return modelAndView;
    }

    @RequestMapping("/adminLogout")
    public ModelAndView adminLogin(HttpSession session) {
        log.info("--- AdminController adminLogin");
        session.setAttribute("adminUserName", null);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/adminLogin");
        modelAndView.addObject("message", "登出成功");
        return modelAndView;
    }
}
