package controller.back;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import util.LoginUtil;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/cinema")
public class CinemaController {

    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/toAddCinema")
    public ModelAndView toAddCinema(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/cinema/addCinema");
        }
        return modelAndView;
    }

    @RequestMapping("/addCinema")
    public ModelAndView addCinema(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/cinema/listCinema");
        }
        return modelAndView;
    }

    @RequestMapping("/delCinema")
    public ModelAndView delCinema(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/cinema/listCinema");
        }
        return modelAndView;
    }

    @RequestMapping("/toEditCinema")
    public ModelAndView toEditCinema(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/cinema/editCinema");
        }
        return modelAndView;
    }

    @RequestMapping("/editCinema")
    public ModelAndView editCinema(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/cinema/listCinema");
        }
        return modelAndView;
    }

    @RequestMapping("/listCinema")
    public ModelAndView listCinema(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/cinema/listCinema");
        }
        return modelAndView;
    }

}
