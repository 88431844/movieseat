package dao;

import dto.MovieInfoDto;
import dto.MuserDto;
import entity.MovieInfo;
import entity.Muser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MovieInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MovieInfo record);

    int insertSelective(MovieInfo record);

    MovieInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MovieInfo record);

    int updateByPrimaryKey(MovieInfo record);

    int haveMovie(@Param("name") String name);

    List<MovieInfoDto> listMovie();

    List<MovieInfoDto> lastFiveMovie();

    List<MovieInfoDto> searchByName(@Param("name") String name);

    Muser userLogin(MuserDto muserDto);
}