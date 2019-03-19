package controller.back;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import util.LoginUtil;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/backMovie")
public class BackMovieController {

    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/toAddMovie")
    public ModelAndView toAddMovie(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/movie/addMovie");
        }
        return modelAndView;
    }

    @RequestMapping("/addMovie")
    public ModelAndView addMovie(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/movie/listMovie");
        }
        return modelAndView;
    }

    @RequestMapping("/delMovie")
    public ModelAndView delMovie(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/movie/listMovie");
        }
        return modelAndView;
    }

    @RequestMapping("/toEditMovie")
    public ModelAndView toEditMovie(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/movie/editMovie");
        }
        return modelAndView;
    }

    @RequestMapping("/editMovie")
    public ModelAndView editMovie(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/movie/listMovie");
        }
        return modelAndView;
    }

    @RequestMapping("/listMovie")
    public ModelAndView listMovie(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/movie/listMovie");
        }
        return modelAndView;
    }
}
