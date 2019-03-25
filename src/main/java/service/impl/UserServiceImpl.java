package service.impl;

import dao.MuserMapper;
import dto.MuserDto;
import entity.Muser;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.UserService;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private MuserMapper muserMapper;

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
}
