package dao;

import dto.MovieTicket;
import dto.TicketDto;
import entity.Ticket;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TicketMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Ticket record);

    int insertSelective(Ticket record);

    Ticket selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Ticket record);

    int updateByPrimaryKey(Ticket record);

    List<TicketDto> listTicket();

    int haveTicket(TicketDto ticketDto);

    TicketDto getTicket(@Param("id") int id);

    List<TicketDto> getTicketByDay(@Param("movieId") String movieId, @Param("day") String day);
}