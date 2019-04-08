package service.impl;

import dao.TicketMapper;
import dto.MovieTicket;
import dto.TicketDto;
import dto.UserTicketDto;
import entity.Ticket;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.TicketService;

import java.util.ArrayList;
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

    @Override
    public List<MovieTicket> getTicketByDay(String movieId, String day) {
        List<TicketDto> ticketDtoList = ticketMapper.getTicketByDay(movieId, day);
        List<MovieTicket> movieTicketList = new ArrayList<>();
        if (null != ticketDtoList && ticketDtoList.size() > 0) {
            for (TicketDto ticketDto : ticketDtoList) {
                MovieTicket movieTicket = new MovieTicket();
                StringBuilder myInfo = new StringBuilder();
                myInfo.append(ticketDto.getCinemaName());
                myInfo.append("-");
                myInfo.append(ticketDto.getHallname());
                myInfo.append("-");
                myInfo.append(ticketDto.getDay());
                myInfo.append("-");
                myInfo.append(ticketDto.getTime());
                myInfo.append("-");
                myInfo.append(ticketDto.getPrice());
                myInfo.append("元-");
                myInfo.append(ticketDto.getType());

                movieTicket.setMyInfo(myInfo.toString());
                movieTicket.setTicketId(ticketDto.getId());
                movieTicketList.add(movieTicket);
            }
        }
        return movieTicketList;
    }

    @Override
    public List<UserTicketDto> getTicketByUserId(int userId) {
        return ticketMapper.getTicketByUserId(userId);
    }
}
