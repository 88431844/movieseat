package dao;

import dto.CardInfoDto;
import entity.CardInfo;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CardInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CardInfo record);

    int insertSelective(CardInfo record);

    CardInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CardInfo record);

    int updateByPrimaryKey(CardInfo record);

    int have(@Param("name") String name);

    List<CardInfoDto> list();

    CardInfoDto getCardInfoByUserId(@Param("userId") int userId);
}