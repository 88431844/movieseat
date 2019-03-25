package dao;

import dto.MuserDto;
import entity.Muser;

public interface MuserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Muser record);

    int insertSelective(Muser record);

    Muser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Muser record);

    int updateByPrimaryKey(Muser record);

    int haveUser(MuserDto muserDto);

    Muser userLogin(MuserDto muserDto);
}