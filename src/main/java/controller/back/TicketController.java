package controller.back;

import dto.CinemaDto;
import dto.MovieInfoDto;
import dto.TicketDto;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.CinemaService;
import service.MovieService;
import service.TicketService;
import util.LoginUtil;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/ticket")
public class TicketController {

    private Logger log = Logger.getLogger(this.getClass());
    @Autowired
    private MovieService movieService;
    @Autowired
    private CinemaService cinemaService;
    @Autowired
    private TicketService ticketService;

    @RequestMapping("/toAddTicket")
    public ModelAndView toAddTicket(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/addTicket");
        }
        List<MovieInfoDto> movieList = movieService.listMovie();
        List<CinemaDto> cinemaList = cinemaService.listCinema();
        modelAndView.addObject("movieList", movieList);
        modelAndView.addObject("cinemaList", cinemaList);

        return modelAndView;
    }

    @RequestMapping("/addTicket")
    public ModelAndView addTicket(HttpSession session, TicketDto ticketDto) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/listTicket");
        }
        if (0 == ticketService.haveTicket(ticketDto)) {
            ticketService.addTicket(ticketDto);
            modelAndView.addObject("message", "添加成功");
        } else {
            modelAndView.addObject("message", "添加失败，票务重复");
        }
        return queryTicket(modelAndView);
    }

    @RequestMapping("/delTicket")
    public ModelAndView delTicket(HttpSession session, @RequestParam("id") int id) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/listTicket");
        }
        if (1 == ticketService.delTicket(id)) {
            modelAndView.addObject("message", "删除成功");
        } else {
            modelAndView.addObject("message", "删除失败");
        }
        return queryTicket(modelAndView);
    }

    @RequestMapping("/toEditTicket")
    public ModelAndView toEditTicket(HttpSession session, @RequestParam("id") int id) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/editTicket");
        }
        TicketDto ticketDto = ticketService.getTicket(id);
        modelAndView.addObject("ticketDto", ticketDto);

        return modelAndView;
    }

    @RequestMapping("/editTicket")
    public ModelAndView editTicket(HttpSession session, TicketDto ticketDto) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/listTicket");
        }

        int haveTicket = 0;
        if (ticketDto.getOldMovieId() != ticketDto.getMovieid()
                || ticketDto.getOldCinemaId() != ticketDto.getOldCinemaId()
                || !ticketDto.getOldTime().equals(ticketDto.getTime())
                || ticketDto.getOlePrice().equals(ticketDto.getPrice())
        ) {
            haveTicket = ticketService.haveTicket(ticketDto);
        }

        if (haveTicket > 0) {
            modelAndView.addObject("message", "修改失败，票务信息重复");
            return queryTicket(modelAndView);
        }

        int haveEdit = ticketService.editTicket(ticketDto);
        if (haveEdit > 0) {
            modelAndView.addObject("message", "修改成功");
        } else {
            modelAndView.addObject("message", "修改失败");
        }
        return queryTicket(modelAndView);
    }

    @RequestMapping("/listTicket")
    public ModelAndView listTicket(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            return queryTicket(modelAndView);
        }
        return modelAndView;
    }

    private ModelAndView queryTicket(ModelAndView modelAndView) {
        List<TicketDto> list = ticketService.listTicket();
        if (0 == list.size()) {
            modelAndView.addObject("message", "查询列表为空");
        }
        modelAndView.addObject("ticketList", list);
        modelAndView.setViewName("back/ticket/listTicket");
        return modelAndView;
    }
}
