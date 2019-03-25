package controller.back;

import dto.CinemaDto;
import entity.Cinema;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.CinemaService;
import util.LoginUtil;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/cinema")
public class CinemaController {


    @Autowired
    private CinemaService cinemaService;
    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/toAddCinema")
    public ModelAndView toAddCinema(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/cinema/addCinema");
        }

        return modelAndView;
    }

    @RequestMapping("/addCinema")
    public ModelAndView addCinema(HttpSession session,CinemaDto cinemaDto) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/cinema/listCinema");
        }

        if (0 == cinemaService.haveCinema(cinemaDto.getName())){
            cinemaService.addCinema(cinemaDto);
            modelAndView.addObject("message","添加成功");
        }
        else{
            modelAndView.addObject("message","添加失败，影院名词重复");
        }

        return queryCinema(modelAndView);
    }

    @RequestMapping("/delCinema")
    public ModelAndView delCinema(HttpSession session, @RequestParam("id") int id) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/cinema/listCinema");
        }
        if (1 == cinemaService.delCinema(id)){
            modelAndView.addObject("message","删除成功");
        }
        else {
            modelAndView.addObject("message","删除失败");
        }
        modelAndView = queryCinema(modelAndView);
        return modelAndView;
    }

    @RequestMapping("/toEditCinema")
    public ModelAndView toEditCinema(HttpSession session,@RequestParam("id") int id) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/cinema/editCinema");
        }
        Cinema cinema = cinemaService.getCinema(id);
        modelAndView.addObject("cinema", cinema);

        return modelAndView;
    }

    @RequestMapping("/editCinema")
    public ModelAndView editCinema(HttpSession session,CinemaDto cinemaDto) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/cinema/listCinema");
        }
        int haveCinema = 0;
        if (!cinemaDto.getOldName().equals(cinemaDto.getName())){
            haveCinema = cinemaService.haveCinema(cinemaDto.getName());
        }
        if (haveCinema > 0){
            modelAndView.addObject("message", "修改失败，影院名称重复");

        }

        int haveEdit = cinemaService.editCinema(cinemaDto);
        if (haveEdit > 0) {
            modelAndView.addObject("message", "修改成功");
        } else {
            modelAndView.addObject("message", "修改失败");
        }
        return queryCinema(modelAndView);
    }

    @RequestMapping("/listCinema")
    public ModelAndView listCinema(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            return queryCinema(modelAndView);
        }
        return modelAndView;
    }

    private ModelAndView queryCinema(ModelAndView modelAndView) {
        List<CinemaDto> list = cinemaService.listCinema();
        if (0 == list.size()) {
            modelAndView.addObject("message", "查询列表为空");
        }
        modelAndView.addObject("cinemaList", list);
        modelAndView.setViewName("back/cinema/listCinema");
        return modelAndView;
    }

}
