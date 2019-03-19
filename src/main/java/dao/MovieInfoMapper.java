package dao;

import entity.MovieInfo;

public interface MovieInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MovieInfo record);

    int insertSelective(MovieInfo record);

    MovieInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MovieInfo record);

    int updateByPrimaryKey(MovieInfo record);
}