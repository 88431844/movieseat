package controller.back;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import dto.*;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.CinemaService;
import service.HallService;
import service.MovieService;
import service.SeatService;
import service.TicketService;
import util.LoginUtil;

import javax.servlet.http.HttpServletResponse;
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
    @Autowired
    private HallService hallService;
    @Autowired
    private SeatService seatService;

    @RequestMapping("/toAddTicket")
    public ModelAndView toAddTicket(HttpSession session) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/addTicket");
        }

        return getMovCinList(modelAndView);
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
        List<SeatInfo> selledSeatList = seatService.getSelledSeat(id);
        if (selledSeatList.size() > 0){
            modelAndView.addObject("message", "删除失败，该场电影已有用户购买！");
            return queryTicket(modelAndView);
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
        int hallid = ticketDto.getHallid();
        HallDto hallDto = hallService.getHall(hallid);
        modelAndView.addObject("hallDto", hallDto);

        List<SeatInfo> selledSeatList = seatService.getSelledSeat(id);
        modelAndView.addObject("selledSeat", selledSeatList.size());

        return getMovCinList(modelAndView);
    }

    @RequestMapping("/editTicket")
    public ModelAndView editTicket(HttpSession session, TicketDto ticketDto,int selledSeat) {
        ModelAndView modelAndView = LoginUtil.checkAdminLogin(session);
        if (null == modelAndView.getViewName()) {
            modelAndView.setViewName("back/ticket/listTicket");
        }
        if (ticketDto.getTicketsum() < selledSeat){
            modelAndView.addObject("message", "修改失败，已买票数大于修改票数！");
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
    private ModelAndView getMovCinList(ModelAndView modelAndView){
        List<MovieInfoDto> movieList = movieService.listMovie();
        List<CinemaDto> cinemaList = cinemaService.listCinema();
        modelAndView.addObject("movieList", movieList);
        modelAndView.addObject("cinemaList", cinemaList);
        return modelAndView;
    }


    @RequestMapping("/getTicketByDay")
    @ResponseBody
    public void getHallByCinemaId(HttpServletResponse response, @RequestParam("movieId") String movieId, @RequestParam("day") String day) {
        try {
            List<MovieTicket> movieTicketList = ticketService.getTicketByDay(movieId, day);
            if (movieTicketList.size() == 0) {
                MovieTicket movieTicket = new MovieTicket();
                movieTicket.setTicketId(0);
                movieTicket.setMyInfo("该日期没有该电影档期");
                movieTicketList.add(movieTicket);
            }
            JSONArray json = JSONArray.parseArray(JSON.toJSONString(movieTicketList));
            response.setContentType("text/html;character=utf-8");
            response.getWriter().println(json);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
