
package service;


import dto.HallDto;
import entity.Hall;
import java.util.List;

public interface HallService {
  int addHall(HallDto hallDto);

  void updateHall(Hall hall);

  List<HallDto> listHall();

  int haveHall(int cinemaId,String hallName);

  int delHall(int id);

  HallDto getHall(int id);

  int editHall(HallDto hallDto);
}