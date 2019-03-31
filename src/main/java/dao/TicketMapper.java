package dao;

import dto.TicketDto;
import entity.Ticket;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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
}