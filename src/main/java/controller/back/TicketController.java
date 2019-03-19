package controller.back;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/ticket")
public class TicketController {

    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/toAddTicket")
    public ModelAndView toAddTicket(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }

    @RequestMapping("/addTicket")
    public ModelAndView addTicket(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }

    @RequestMapping("/delTicket")
    public ModelAndView delTicket(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }

    @RequestMapping("/toEditTicket")
    public ModelAndView toEditTicket(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }

    @RequestMapping("/editTicket")
    public ModelAndView editTicket(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }

    @RequestMapping("/listTicket")
    public ModelAndView listTicket(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }
}
