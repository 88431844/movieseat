package service;

import dto.AdminLoginDto;
import entity.Madmin;

public interface AdminService {

    /**
     * 管理员登陆
     * @param adminLoginDto
     * @return
     */
    Madmin adminLogin(AdminLoginDto adminLoginDto);
}
