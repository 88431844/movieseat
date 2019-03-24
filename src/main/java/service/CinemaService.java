package service;

import dto.CinemaDto;
import entity.Cinema;

import java.util.List;

public interface CinemaService {
    int addCinema(CinemaDto cinemaDto);

    void updateCinema(Cinema cinema);

    List<CinemaDto> listCinema();

    int haveCinema(String name);

    int delCinema(int id);

    Cinema getCinema(int id);

    int editCinema(CinemaDto cinemaDto);
}
