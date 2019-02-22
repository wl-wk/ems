package com.baizhi.service;

import com.baizhi.entity.Ems;

import java.util.Map;

public interface EmsService {
    Map<String, Object> login(String name, String password);

    Boolean regist(Ems ems, String code);

    void getAll();

    void removeById(Integer id);

    void getById(Integer id);

    void modify(Ems ems);

    void add(Ems ems);
}
