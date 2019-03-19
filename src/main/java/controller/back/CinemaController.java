package controller.back;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cinema")
public class CinemaController {

    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/toAddCinema")
    public ModelAndView toAddCinema(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }

    @RequestMapping("/addCinema")
    public ModelAndView addCinema(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }

    @RequestMapping("/delCinema")
    public ModelAndView delCinema(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }

    @RequestMapping("/toEditCinema")
    public ModelAndView toEditCinema(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }

    @RequestMapping("/editCinema")
    public ModelAndView editCinema(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }

    @RequestMapping("/listCinema")
    public ModelAndView listCinema(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("");
        return modelAndView;
    }

}
