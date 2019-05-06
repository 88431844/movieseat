package service.impl;

import dao.ItemInfoMapper;
import dto.ItemInfoDto;
import entity.ItemInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ItemService;

import java.util.List;

@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemInfoMapper itemInfoMapper;

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
        return null;
    }

    @Override
    public int have(String name) {
        return 0;
    }

    @Override
    public int del(int id) {
        return 0;
    }

    @Override
    public ItemInfo get(int id) {
        return null;
    }

    @Override
    public int edit(ItemInfoDto itemInfoDto) {
        return 0;
    }
}
