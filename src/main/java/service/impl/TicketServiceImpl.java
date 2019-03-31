package service.impl;

import dao.TicketMapper;
import dto.TicketDto;
import entity.Ticket;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.TicketService;

import java.util.List;

@Service
public class TicketServiceImpl implements TicketService {

    @Autowired
    private TicketMapper ticketMapper;

    @Override
    public int addTicket(TicketDto ticketDto) {
        Ticket ticket = new Ticket();
        BeanUtils.copyProperties(ticketDto, ticket);
        return ticketMapper.insertSelective(ticket);
    }

    @Override
    public void updateTicket(Ticket ticket) {

    }

    @Override
    public List<TicketDto> listTicket() {
        return ticketMapper.listTicket();
    }

    @Override
    public int haveTicket(TicketDto ticketDto) {
        return ticketMapper.haveTicket(ticketDto);
    }

    @Override
    public int delTicket(int id) {
        return ticketMapper.deleteByPrimaryKey(id);
    }

    @Override
    public TicketDto getTicket(int id) {
        return ticketMapper.getTicket(id);
    }

    @Override
    public int editTicket(TicketDto ticketDto) {
        Ticket ticket = new Ticket();
        BeanUtils.copyProperties(ticketDto, ticket);
        return ticketMapper.updateByPrimaryKeySelective(ticket);
    }
}
