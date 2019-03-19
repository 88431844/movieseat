package service.impl;

import dao.MadminMapper;
import dto.AdminLoginDto;
import entity.Madmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private MadminMapper madminMapper;

    @Override
    public Madmin adminLogin(AdminLoginDto adminLoginDto) {
        return madminMapper.adminLogin(adminLoginDto);
    }
}
