
package service.impl;

import dao.SeatMapper;
import dto.SeatInfo;
import dto.TicketDto;
import entity.Seat;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.SeatService;
import service.TicketService;
import service.UserService;

@Service
public class SeatServiceImpl implements SeatService {


  @Autowired
  private TicketService ticketService;
  @Autowired
  private SeatMapper seatMapper;
  @Autowired
  private UserService userService;

  @Override
  public String paySeat(String selectSeat, int ticketId, int userId) {

    String ret = "1";
    String[] selectedSeats = selectSeat.split(",");
    List<Seat> seatList = new ArrayList<>();
    TicketDto ticketDto = ticketService.getTicket(ticketId);
    int buyTicketSum = selectedSeats.length;
    int integral = (int) (ticketDto.getPrice() * buyTicketSum);
    int totalTicketSum = ticketDto.getTicketsum();
    int sellTicketSum = seatMapper.getSellTicketSum(ticketId);
    int leftTicket = totalTicketSum - sellTicketSum;
    //验证对应票务信息，影票数量是否够，本次购票数量
    if (leftTicket >= buyTicketSum){
      //拼装要添加的影票座位信息
      for (String selectedSeat : selectedSeats){
        int seatRow = Integer.parseInt(selectedSeat.split("_")[0]);
        int seatCols = Integer.parseInt(selectedSeat.split("_")[1]);
        Seat seat = new Seat();
        seat.setUserid(userId);
        seat.setTicketid(ticketId);
        seat.setRow(seatRow);
        seat.setCol(seatCols);
        seatList.add(seat);
      }
      this.insertList(seatList);
      //更新用户积分
      userService.updateUserIntegral(userId, integral);
      return ret;
    }
    else {
      ret = "购买影票数量，大于剩余数量，请重新选择！";
      return ret;
    }
  }

  @Override
  public List<SeatInfo> getSelledSeat(int ticketId) {
    List<SeatInfo> seatInfoList = new ArrayList<>();
    List<Seat> selledSeatList = seatMapper.getSelledSeat(ticketId);
    for (int i = 0; i < selledSeatList.size(); i++) {
      int seatrow = selledSeatList.get(i).getRow();
      int seatcols = selledSeatList.get(i).getCol();
      String selledSeat = "";
      if((i + 1) == selledSeatList.size()){
        selledSeat = "\""+seatrow+"_"+seatcols+"\"";
      }
      else {
        selledSeat = "\""+seatrow+"_"+seatcols+"\",";
      }
      SeatInfo seatInfo = new SeatInfo();
      seatInfo.setSelledSeat(selledSeat);
      seatInfoList.add(seatInfo);
    }

    return seatInfoList;
  }

  @Override
  public void delSeatById(int seatId) {
    seatMapper.deleteByPrimaryKey(seatId);
  }

  @Override
  public boolean haveDateOut(int seatId) {
    Seat seat = seatMapper.selectByPrimaryKey(seatId);
    TicketDto ticketDto = ticketService.getTicket(seat.getTicketid());
    String day = ticketDto.getDay();
    String time = ticketDto.getTime();
    String movieTime = day + " " + time;

    DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
    LocalDateTime movieDate = LocalDateTime.parse(movieTime,df);

//    LocalDateTime movieDate = LocalDateTime.parse(movieTime);
    LocalDateTime now = LocalDateTime.now();
    Duration duration = Duration.between(now,movieDate);
    //相差大于2小时，则不让退票
    long min = duration.toHours();
    return min > 120;

  }

  private void insertList(List<Seat> seatList) {
    for (Seat seat : seatList){
      seatMapper.insertSelective(seat);
    }
  }
}