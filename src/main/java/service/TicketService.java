package service;

import dto.MovieTicket;
import dto.TicketDto;
import entity.Ticket;

import java.util.List;

public interface TicketService {
    int addTicket(TicketDto ticketDto);

    void updateTicket(Ticket ticket);

    List<TicketDto> listTicket();

    int haveTicket(TicketDto ticketDto);

    int delTicket(int id);

    TicketDto getTicket(int id);

    int editTicket(TicketDto ticketDto);

    List<MovieTicket> getTicketByDay(String movieId, String day);
}
