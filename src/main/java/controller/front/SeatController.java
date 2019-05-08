
package controller.front;

import dto.CardInfoDto;
import dto.HallDto;
import dto.SeatInfo;
import dto.TicketDto;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.*;
import util.SeatUtil;

import javax.servlet.http.HttpSession;

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
  @Autowired
  private CardService cardService;

  @RequestMapping("/getSeat")
  public ModelAndView seat(HttpSession session, @RequestParam("ticketId") int ticketId) {
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

    int userId = (int) session.getAttribute("userId");
    CardInfoDto cardInfoDto = cardService.getCardInfoByUserId(userId);
    modelAndView.addObject("cardInfoDto", cardInfoDto);

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