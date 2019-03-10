package controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class userController {

    @RequestMapping("/toRegisterUser")
    public String toRegisterUser(){
        return "front/user/registerUser";
    }

    @RequestMapping("/registerUser")
    public String registerUser(){
        return "front/movie/movieWall";
    }
}
