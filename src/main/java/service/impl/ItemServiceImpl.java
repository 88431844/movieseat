package service.impl;

import dao.ItemInfoMapper;
import dao.UserItemMapper;
import dto.ItemInfoDto;
import entity.ItemInfo;
import entity.UserItem;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ItemService;

import java.util.List;

@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemInfoMapper itemInfoMapper;
    @Autowired
    private UserItemMapper userItemMapper;

    @Override
    public int add(ItemInfoDto itemInfoDto) {
        ItemInfo itemInfo = new ItemInfo();
        BeanUtils.copyProperties(itemInfoDto, itemInfo);
        return itemInfoMapper.insertSelective(itemInfo);
    }

    @Override
    public void update(ItemInfo itemInfo) {
        itemInfoMapper.updateByPrimaryKeySelective(itemInfo);
    }

    @Override
    public List<ItemInfoDto> list() {
        return itemInfoMapper.list();
    }

    @Override
    public int have(String name) {
        return itemInfoMapper.have(name);
    }

    @Override
    public int del(int id) {
        return itemInfoMapper.deleteByPrimaryKey(id);
    }

    @Override
    public ItemInfo get(int id) {
        return itemInfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public int edit(ItemInfoDto itemInfoDto) {
        ItemInfo itemInfo = new ItemInfo();
        BeanUtils.copyProperties(itemInfoDto, itemInfo);
        return itemInfoMapper.updateByPrimaryKeySelective(itemInfo);
    }

    @Override
    public void addUserItem(int userId, int id) {
        UserItem userItem = new UserItem();
        userItem.setItemid(id);
        userItem.setUserid(userId);
        userItemMapper.insertSelective(userItem);
    }

    @Override
    public List<ItemInfoDto> getUserOrder(int userId) {
        return userItemMapper.getUserOrder(userId);
    }
}
