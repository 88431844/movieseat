
package service.impl;

import dao.HallMapper;
import dto.HallDto;
import entity.Hall;
import java.util.List;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.HallService;

@Service
public class HallServiceImpl implements HallService {

  @Autowired
  private HallMapper hallMapper;

  @Override
  public int addHall(HallDto hallDto) {
    Hall hall = new Hall();
    BeanUtils.copyProperties(hallDto,hall);
    return hallMapper.insertSelective(hall);
  }

  @Override
  public void updateHall(Hall hall) {
    hallMapper.updateByPrimaryKeySelective(hall);
  }

  @Override
  public List<HallDto> listHall() {
    return hallMapper.listHall();
  }

  @Override
  public int haveHall(int cinemaId, String hallName) {
    return hallMapper.haveHall(cinemaId,hallName);
  }

  @Override
  public int delHall(int id) {
    return hallMapper.deleteByPrimaryKey(id);
  }

  @Override
  public HallDto getHall(int id) {
    return hallMapper.getHall(id);
  }

  @Override
  public int editHall(HallDto hallDto) {
    Hall hall = new Hall();
    BeanUtils.copyProperties(hallDto,hall);
    return hallMapper.updateByPrimaryKeySelective(hall);
  }
}