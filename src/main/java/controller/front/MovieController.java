package controller.front;

import dto.DateDto;
import dto.MovieInfoDto;
import entity.MovieInfo;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.MovieService;
import util.ListUtil;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/movie")
public class MovieController {

    private Logger log = Logger.getLogger(this.getClass());
    @Autowired
    private MovieService movieService;

    @RequestMapping("/wall")
    public ModelAndView wall() {
        ModelAndView modelAndView = new ModelAndView();
        log.info("----- movie wall loading .....");
        return movieWallInit(modelAndView, movieService);
    }

    private static ModelAndView initMovieWall(ModelAndView modelAndView, List<MovieInfoDto> movieInfoDtoList) {
        modelAndView.setViewName("front/movie/movieWall");
        List<List<MovieInfoDto>> movieLists = ListUtil.subList(movieInfoDtoList, 5);
        modelAndView.addObject("movieLists", movieLists);
        return modelAndView;
    }


    @RequestMapping("/detail")
    public ModelAndView detail(@RequestParam("id") int id, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("----- movie detail  .....");

        Integer userId = (Integer) session.getAttribute("userId");
        if (null == userId){
            modelAndView.addObject("message","请先登录！");
            return movieWallInit(modelAndView, movieService);
        }

        modelAndView.setViewName("front/movie/movieDetail");

        MovieInfo movieInfo = movieService.getMovie(id);
        modelAndView.addObject("movieInfo", movieInfo);

        List<DateDto> dateList = new ArrayList<>();
        LocalDate now = LocalDate.now();
        for (int i = 0; i < 7; i++) {
            DateDto dateDto = new DateDto();
            dateDto.setDay(now.plusDays(i).toString());
            dateList.add(dateDto);
        }
        modelAndView.addObject("dateList", dateList);
        return getLastFiveMovie(modelAndView);
    }

    private ModelAndView getLastFiveMovie(ModelAndView modelAndView) {
        List<MovieInfoDto> lastFiveMovie = movieService.lastFiveMovie();
        return modelAndView.addObject("lastFiveMovie", lastFiveMovie);
    }

    @RequestMapping("/search")
    public ModelAndView search(String name) {
        ModelAndView modelAndView = new ModelAndView();
        List<MovieInfoDto> searchMovieList = movieService.searchByName(name);
        if (searchMovieList.size() > 0) {
            return initMovieWall(modelAndView, searchMovieList);
        } else {
            modelAndView.addObject("message", "电影名称，不存在");
            List<MovieInfoDto> movieInfoDtoList = movieService.listMovie();
            return initMovieWall(modelAndView, movieInfoDtoList);
        }
    }

    public static ModelAndView movieWallInit(ModelAndView modelAndView, MovieService movieService) {
        List<MovieInfoDto> movieInfoDtoList = movieService.listMovie();
        return initMovieWall(modelAndView, movieInfoDtoList);
    }

}
