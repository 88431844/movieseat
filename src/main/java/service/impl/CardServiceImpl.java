
package service.impl;

import dao.CardInfoMapper;
import dto.CardInfoDto;
import entity.CardInfo;
import java.util.List;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.CardService;

@Service
public class CardServiceImpl implements CardService {

  @Autowired
  private CardInfoMapper cardInfoMapper;


  @Override
  public int add(CardInfoDto cardInfoDto) {
    CardInfo cardInfo = new CardInfo();
    BeanUtils.copyProperties(cardInfoDto,cardInfo);
    return cardInfoMapper.insertSelective(cardInfo);
  }

  @Override
  public void update(CardInfo cardInfo) {
    cardInfoMapper.updateByPrimaryKeySelective(cardInfo);
  }

  @Override
  public List<CardInfoDto> list() {
    return cardInfoMapper.list();
  }

  @Override
  public int have(String name) {
    return cardInfoMapper.have(name);
  }

  @Override
  public int del(int id) {
    return cardInfoMapper.deleteByPrimaryKey(id);
  }

  @Override
  public CardInfo get(int id) {
    return cardInfoMapper.selectByPrimaryKey(id);
  }

  @Override
  public int edit(CardInfoDto cardInfoDto) {
    CardInfo cardInfo = new CardInfo();
    BeanUtils.copyProperties(cardInfoDto,cardInfo);
    return cardInfoMapper.updateByPrimaryKeySelective(cardInfo);
  }

  @Override
  public CardInfoDto getCardInfoByUserId(int userId) {
    return cardInfoMapper.getCardInfoByUserId(userId);
  }

  @Override
  public void buyCard(int id, int userId) {
    cardInfoMapper.buyCard(id,userId);
  }
}