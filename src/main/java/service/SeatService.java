
package service;

import dto.SeatInfo;
import java.util.List;

public interface SeatService {

  String paySeat(String selectSeat, int ticketId, int userId);

  List<SeatInfo> getSelledSeat(int ticketId);

  void delSeatById(int seatId);
}