package dao;

import dto.AdminLoginDto;
import entity.Madmin;

public interface MadminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Madmin record);

    int insertSelective(Madmin record);

    Madmin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Madmin record);

    int updateByPrimaryKey(Madmin record);

    /**
     * 管理员登陆
     * @param adminLoginDto
     * @return
     */
    Madmin adminLogin(AdminLoginDto adminLoginDto);
}