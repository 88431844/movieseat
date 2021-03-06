package service.impl;

import dao.MovieInfoMapper;
import dto.MovieInfoDto;
import entity.MovieInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.MovieService;

import java.util.List;

@Service
public class MovieServiceImpl implements MovieService {

    @Autowired
    private MovieInfoMapper movieInfoMapper;

    @Override
    public int addMovie(MovieInfoDto movieInfoDto) {
        MovieInfo movieInfo = new MovieInfo();
        BeanUtils.copyProperties(movieInfoDto, movieInfo);
        movieInfoMapper.insertSelective(movieInfo);
        return movieInfo.getId();
    }

    @Override
    public void updateMovie(MovieInfo movieInfo) {
        movieInfoMapper.updateByPrimaryKeySelective(movieInfo);
    }

    @Override
    public List<MovieInfoDto> listMovie() {
        return movieInfoMapper.listMovie();
    }

    @Override
    public int haveMovie(String name) {
        return movieInfoMapper.haveMovie(name);
    }

    @Override
    public int delMovie(int id) {
        return movieInfoMapper.deleteByPrimaryKey(id);
    }

    @Override
    public MovieInfo getMovie(int id) {
        return movieInfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public int editMovie(MovieInfoDto movieInfoDto) {
        MovieInfo movieInfo = new MovieInfo();
        BeanUtils.copyProperties(movieInfoDto, movieInfo);
        return movieInfoMapper.updateByPrimaryKeySelective(movieInfo);
    }

    @Override
    public List<MovieInfoDto> lastFiveMovie() {
        return movieInfoMapper.lastFiveMovie();
    }

    @Override
    public List<MovieInfoDto> searchByName(String name) {
        return movieInfoMapper.searchByName(name);
    }
}
