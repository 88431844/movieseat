package dao;

import entity.Seat;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SeatMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Seat record);

    int insertSelective(Seat record);

    Seat selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Seat record);

    int updateByPrimaryKey(Seat record);

  int getSellTicketSum(@Param("ticketId") int ticketId);

  List<Seat> getSelledSeat(@Param("ticketId") int ticketId);
}