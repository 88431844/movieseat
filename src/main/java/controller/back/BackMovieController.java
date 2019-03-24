package controller.back;

import com.alibaba.fastjson.JSON;
import dto.MovieInfoDto;
import entity.MovieInfo;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import service.MovieService;
import util.LoginUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;


@Controller
@RequestMapping("/backMovie")
public class BackMovieController {

    private String imgPath = "src/main/webapp/static/uploadImg/";
    private Logger log = Logger.getLogger(this.getClass());
    @Autowired
    private MovieService movieService;

    @RequestMapping("/toAddMovie")
    public ModelAndView toAddMovie(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/movie/addMovie");
        }
        return modelAndView;
    }

    @RequestMapping("/addMovie")
    public ModelAndView addMovie(HttpSession session, MovieInfoDto movieInfoDto,
                                 HttpServletRequest request,
                                 @RequestParam("imgFile") MultipartFile file) {
        log.info("BackMovieController addMovie param : " + JSON.toJSONString(movieInfoDto));
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/movie/listMovie");
        }

        //判断电影名称是否已经存在
        int haveMovie = movieService.haveMovie(movieInfoDto.getName());
        if (haveMovie > 0) {
            modelAndView.addObject("message", "添加失败，电影名称重复");
            return queryMovieInfo(modelAndView);
        }

        int movieId = movieService.addMovie(movieInfoDto);
        log.info("movie id : " + movieId);
        if (movieId > 0) {
            modelAndView.addObject("message", "添加成功");
            //添加电影海报文件
            String fileName = file.getOriginalFilename();
            String imgFileName = movieId + "_" + fileName;
            try {
                String path = request.getRealPath("uploadFile/");
                FileOutputStream fos = FileUtils.openOutputStream(new File(path + imgFileName));
                IOUtils.copy(file.getInputStream(), fos);
                fos.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

            //将添加完成的电影信息ID作为图片
            MovieInfo movieInfo = new MovieInfo();
            movieInfo.setId(movieId);
            movieInfo.setImg(imgFileName);
            movieService.updateMovie(movieInfo);
            return queryMovieInfo(modelAndView);
        } else {
            modelAndView.addObject("message", "添加失败");
            return queryMovieInfo(modelAndView);
        }
    }

    @RequestMapping("/delMovie")
    public ModelAndView delMovie(HttpSession session, @RequestParam("id") int id) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/movie/listMovie");
        }


        int haveDel = movieService.delMovie(id);
        if (0 == haveDel) {
            modelAndView.addObject("message", "删除失败");
        } else {
            modelAndView.addObject("message", "删除成功");
        }
        modelAndView = queryMovieInfo(modelAndView);
        return modelAndView;
    }

    @RequestMapping("/toEditMovie")
    public ModelAndView toEditMovie(HttpSession session, @RequestParam("id") int id) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/movie/editMovie");
        }

        MovieInfo movieInfo = movieService.getMovie(id);
        modelAndView.addObject("movieInfo", movieInfo);

        return modelAndView;
    }

    @RequestMapping("/editMovie")
    public ModelAndView editMovie(HttpSession session, MovieInfoDto movieInfoDto) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/movie/listMovie");
        }
        log.info("BackMovieController editMovie param :  " + JSON.toJSONString(movieInfoDto));
        int haveEdit = movieService.editMovie(movieInfoDto);
        if (haveEdit > 0) {
            modelAndView.addObject("message", "修改成功");
        } else {
            modelAndView.addObject("message", "修改失败");
        }
        return queryMovieInfo(modelAndView);
    }

    @RequestMapping("/listMovie")
    public ModelAndView listMovie(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            return queryMovieInfo(modelAndView);
        }
        return modelAndView;
    }

    private ModelAndView queryMovieInfo(ModelAndView modelAndView) {
        List<MovieInfoDto> movieList = movieService.listMovie();
        if (0 == movieList.size()) {
            modelAndView.addObject("message", "查询列表为空");
        }
        modelAndView.addObject("movieList", movieList);
        modelAndView.setViewName("back/movie/listMovie");
        return modelAndView;
    }
}
