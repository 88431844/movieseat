package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
public class TestController {


    @RequestMapping("/movie/seat")
    public ModelAndView test(){
        System.out.println("-------- movie seat !");
        ModelAndView modelAndView = new ModelAndView();

        Map<String,Object> movie = new HashMap<>();
        movie.put("movieName","塞尔达");
        movie.put("movieDate","2019年03月06日");
        movie.put("moviePrice","88");

        modelAndView.setViewName("test");

        modelAndView.addObject("movie",movie);

        return modelAndView;
    }

}
