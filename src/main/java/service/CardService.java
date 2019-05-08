package service;

import dto.CardInfoDto;
import entity.CardInfo;
import java.util.List;

public interface CardService {

  int add(CardInfoDto cardInfoDto);

  void update(CardInfo cardInfo);

  List<CardInfoDto> list();

  int have(String name);

  int del(int id);

  CardInfo get(int id);

  int edit(CardInfoDto cardInfoDto);

  CardInfoDto getCardInfoByUserId(int userId);
}
