package dao;

import dto.ItemInfoDto;
import entity.UserItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserItemMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserItem record);

    int insertSelective(UserItem record);

    UserItem selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserItem record);

    int updateByPrimaryKey(UserItem record);

    List<ItemInfoDto> getUserOrder(@Param("userId") int userId);
}