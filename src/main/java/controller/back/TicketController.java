package controller.back;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import util.LoginUtil;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/ticket")
public class TicketController {

    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/toAddTicket")
    public ModelAndView toAddTicket(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/addTicket");
        }
        return modelAndView;
    }

    @RequestMapping("/addTicket")
    public ModelAndView addTicket(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/listTicket");
        }
        return modelAndView;
    }

    @RequestMapping("/delTicket")
    public ModelAndView delTicket(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/listTicket");
        }
        return modelAndView;
    }

    @RequestMapping("/toEditTicket")
    public ModelAndView toEditTicket(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/editTicket");
        }
        return modelAndView;
    }

    @RequestMapping("/editTicket")
    public ModelAndView editTicket(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/listTicket");
        }
        return modelAndView;
    }

    @RequestMapping("/listTicket")
    public ModelAndView listTicket(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/listTicket");
        }
        return modelAndView;
    }
}
