package controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class userController {

    @RequestMapping("/toRegisterUser")
    public String toRegisterUser(){
        return "front/user/registerUser";
    }

    @RequestMapping("/registerUser")
    public ModelAndView registerUser(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("front/movie/movieWall");
        modelAndView.addObject("message","注册成功");
        return modelAndView;
    }
}
