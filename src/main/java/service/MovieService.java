package service;

import dto.MovieInfoDto;
import entity.MovieInfo;

import java.util.List;

public interface MovieService {


    int addMovie(MovieInfoDto movieInfoDto);

    void updateMovie(MovieInfo movieInfo);

    List<MovieInfoDto> listMovie();

    int haveMovie(String name);

    int delMovie(int id);

    MovieInfo getMovie(int id);

    int editMovie(MovieInfoDto movieInfoDto);

    List<MovieInfoDto> lastFiveMovie();

    List<MovieInfoDto> searchByName(String name);
}
