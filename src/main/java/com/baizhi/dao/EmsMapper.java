package com.baizhi.dao;

import com.baizhi.entity.Ems;

import java.util.List;

public interface EmsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Ems record);

    int insertSelective(Ems record);

    Ems selectByPrimaryKey(String name);

    int updateByPrimaryKeySelective(Ems record);

    int updateByPrimaryKey(Ems record);

    List<Ems> selectAll();

    Ems selectById(Integer id);

}