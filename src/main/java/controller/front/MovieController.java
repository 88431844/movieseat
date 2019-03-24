package controller.front;

import dto.MovieInfoDto;
import entity.MovieInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.MovieService;
import util.ListUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/movie")
public class MovieController {

    @Autowired
    private MovieService movieService;

    @RequestMapping("/wall")
    public ModelAndView wall() {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("----- movie wall loading .....");

        modelAndView.setViewName("front/movie/movieWall");
        List<MovieInfoDto> movieInfoDtoList = movieService.listMovie();
        List<List<MovieInfoDto>> movieLists = ListUtil.subList(movieInfoDtoList, 5);
        modelAndView.addObject("movieLists", movieLists);
        return modelAndView;
    }


    @RequestMapping("/detail")
    public ModelAndView detail() {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("----- movie detail  .....");
        modelAndView.setViewName("front/movie/movieDetail");

        return modelAndView;
    }

    @RequestMapping("/seat")
    public ModelAndView test() {
        System.out.println("-------- movie seat !");
        ModelAndView modelAndView = new ModelAndView();

        Map<String, Object> movie = new HashMap<>();
        movie.put("movieName", "塞尔达");
        movie.put("movieDate", "2019年03月06日");
        movie.put("moviePrice", "88");

        modelAndView.setViewName("front/movie/selectSeat");

        modelAndView.addObject("movie", movie);

        return modelAndView;
    }
}
