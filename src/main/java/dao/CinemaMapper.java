package dao;

import dto.CinemaDto;
import entity.Cinema;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CinemaMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cinema record);

    int insertSelective(Cinema record);

    Cinema selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cinema record);

    int updateByPrimaryKey(Cinema record);

    List<CinemaDto> listCinema();

    int haveCinema(@Param("name") String name);
}