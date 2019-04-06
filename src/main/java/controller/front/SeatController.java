
package controller.front;

import dto.HallDto;
import dto.SeatInfo;
import dto.TicketDto;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.HallService;
import service.MovieService;
import service.SeatService;
import service.TicketService;
import util.SeatUtil;

@Controller
@RequestMapping("/seat")
public class SeatController {

  @Autowired
  private MovieService movieService;
  @Autowired
  private TicketService ticketService;
  @Autowired
  private HallService hallService;
  @Autowired
  private SeatService seatService;

  @RequestMapping("/getSeat")
  public ModelAndView seat(@RequestParam("ticketId") int ticketId) {
    ModelAndView modelAndView = new ModelAndView();

    TicketDto ticketDto = ticketService.getTicket(ticketId);

    modelAndView.setViewName("front/movie/selectSeat");

    modelAndView.addObject("ticketDto", ticketDto);

    int hallid = ticketDto.getHallid();
    HallDto hallDto = hallService.getHall(hallid);
    int seatRows = hallDto.getSeatrows();
    int seatCols = hallDto.getSeatcols();
    List<SeatInfo> seatInfo = SeatUtil.getSeat(seatRows,seatCols);
    modelAndView.addObject("seatInfo",seatInfo);

    List<SeatInfo> selledSeatList = seatService.getSelledSeat(ticketId);
    modelAndView.addObject("selledSeatList",selledSeatList);

    return modelAndView;
  }

  @RequestMapping("/paySeat")
  public ModelAndView paySeat(
      @RequestParam("selectSeat") String selectSeat,
      @RequestParam("ticketId") int ticketId,
      @RequestParam("userId") int userId){

    ModelAndView modelAndView = new ModelAndView();
    String paySeat = seatService.paySeat(selectSeat,ticketId,userId);
    if ("1".equals(paySeat)){
      modelAndView.addObject("message","支付成功，请到用户中心，查看已购电影票！");
      return MovieController.movieWallInit(modelAndView, movieService);
    }
    else
    {
      modelAndView.addObject("message",paySeat);
      modelAndView.setViewName("front/movie/selectSeat?ticketId="+ticketId);
      return modelAndView;
    }
  }

}