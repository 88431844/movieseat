package dao;

import dto.HallDto;
import entity.Hall;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HallMapper {

  int deleteByPrimaryKey(Integer id);

  int insert(Hall record);

  int insertSelective(Hall record);

  Hall selectByPrimaryKey(Integer id);

  int updateByPrimaryKeySelective(Hall record);

  int updateByPrimaryKey(Hall record);

  List<HallDto> listHall();

  int haveHall(@Param("cinemaId") int cinemaId,@Param("hallName")  String hallName);

  HallDto getHall(@Param("id") int id);
}