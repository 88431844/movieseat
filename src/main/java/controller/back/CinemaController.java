package controller.back;

import dto.CinemaDto;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.CinemaService;
import util.LoginUtil;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/cinema")
public class CinemaController {

    @Autowired
    private CinemaService cinemaService;
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

        List<CinemaDto> cinemaList = cinemaService.listCinema();
        modelAndView.addObject("cinemaList", cinemaList);
        return modelAndView;
    }

}
