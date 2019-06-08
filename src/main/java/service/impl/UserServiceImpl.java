package service.impl;

import dao.MuserMapper;
import dao.UserItemMapper;
import dto.ItemInfoDto;
import dto.MuserDto;
import entity.Muser;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ItemService;
import service.UserService;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private MuserMapper muserMapper;
    @Autowired
    private ItemService itemService;
    @Autowired
    private UserItemMapper userItemMapper;

    @Override
    public int haveUser(MuserDto muserDto) {
        return muserMapper.haveUser(muserDto);
    }

    @Override
    public int registerUser(MuserDto muserDto) {
        Muser muser = new Muser();
        BeanUtils.copyProperties(muserDto, muser);
        return muserMapper.insertSelective(muser);
    }

    @Override
    public Muser userLogin(MuserDto muserDto) {
        return muserMapper.userLogin(muserDto);
    }

    @Override
    public int getUserIntegral(int userId) {
        Integer i = muserMapper.selectByPrimaryKey(userId).getIntegral();
        if (null == i) {
            return 0;
        }
        return i;
    }

    @Override
    public void updateUserIntegral(int userId, int integral) {
        Integer i = muserMapper.selectByPrimaryKey(userId).getIntegral();
        if (null == i) {
            i = 0;
        }
        i = i + integral;
        Muser muser = new Muser();
        muser.setId(userId);
        muser.setIntegral(i);
        muserMapper.updateByPrimaryKeySelective(muser);
    }

    @Override
    public void costUserIntegral(int userId, int id) {
        int integral = muserMapper.selectByPrimaryKey(userId).getIntegral();
        int cost = itemService.get(id).getCost();
        Muser muser = new Muser();
        muser.setId(userId);
        muser.setIntegral(integral - cost);
        itemService.addUserItem(userId, id);
        muserMapper.updateByPrimaryKeySelective(muser);

    }

    @Override
    public List<ItemInfoDto> getUserOrder(int userId) {
        return itemService.getUserOrder(userId);
    }

    @Override
    public void delOrder(int id) {
        userItemMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void subIntegral(int userId, int ticketPrice) {
        Muser muser = muserMapper.selectByPrimaryKey(userId);
        int newIntegral = muser.getIntegral() - ticketPrice;
        if (newIntegral < 0){
            newIntegral = 0;
        }
        muser.setIntegral(newIntegral);
        muserMapper.updateByPrimaryKeySelective(muser);
    }
}
