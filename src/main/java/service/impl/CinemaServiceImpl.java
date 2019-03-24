package service.impl;

import dao.CinemaMapper;
import dto.CinemaDto;
import entity.Cinema;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.CinemaService;

import java.util.List;

@Service
public class CinemaServiceImpl implements CinemaService {

    @Autowired
    private CinemaMapper cinemaMapper;

    @Override
    public int addCinema(CinemaDto cinemaDto) {
        Cinema cinema = new Cinema();
        BeanUtils.copyProperties(cinemaDto, cinema);
        return cinemaMapper.insertSelective(cinema);
    }

    @Override
    public void updateCinema(Cinema cinema) {
        cinemaMapper.updateByPrimaryKeySelective(cinema);
    }

    @Override
    public List<CinemaDto> listCinema() {
        return cinemaMapper.listCinema();
    }

    @Override
    public int haveCinema(String name) {
        return cinemaMapper.haveCinema(name);
    }

    @Override
    public int delCinema(int id) {
        return cinemaMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Cinema getCinema(int id) {
        return cinemaMapper.selectByPrimaryKey(id);
    }

    @Override
    public int editCinema(CinemaDto cinemaDto) {
        Cinema cinema = new Cinema();
        BeanUtils.copyProperties(cinemaDto, cinema);
        return cinemaMapper.updateByPrimaryKeySelective(cinema);
    }
}
