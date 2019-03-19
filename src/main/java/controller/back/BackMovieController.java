package controller.back;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/backMovie")
public class BackMovieController {

    @RequestMapping("/toAddMovie")
    public ModelAndView toAddMovie() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/movie/addMovie");
        return modelAndView;
    }

    @RequestMapping("/addMovie")
    public ModelAndView addMovie() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/movie/listMovie");
        return modelAndView;
    }

    @RequestMapping("/delMovie")
    public ModelAndView delMovie() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/movie/listMovie");
        return modelAndView;
    }

    @RequestMapping("/toEditMovie")
    public ModelAndView toEditMovie() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/movie/editMovie");
        return modelAndView;
    }

    @RequestMapping("/editMovie")
    public ModelAndView editMovie() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/movie/listMovie");
        return modelAndView;
    }

    @RequestMapping("/listMovie")
    public ModelAndView listMovie() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("back/movie/listMovie");
        return modelAndView;
    }
}
