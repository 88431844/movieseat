package service;

import dto.ItemInfoDto;
import entity.ItemInfo;

import java.util.List;

public interface ItemService {
    int add(ItemInfoDto itemInfoDto);

    void update(ItemInfo itemInfo);

    List<ItemInfoDto> list();

    int have(String name);

    int del(int id);

    ItemInfo get(int id);

    int edit(ItemInfoDto itemInfoDto);

    void addUserItem(int userId, int id);

    List<ItemInfoDto> getUserOrder(int userId);
}