package com.baizhi.service.impl;

import com.baizhi.dao.EmsMapper;
import com.baizhi.entity.Ems;
import com.baizhi.service.EmsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class EmsServiceImpl implements EmsService {
    @Autowired
    private EmsMapper emsMapper;
    @Autowired
    private HttpSession session;
    @Autowired
    private HttpServletRequest req;

    @Override
    public void modify(Ems ems) {
        emsMapper.updateByPrimaryKeySelective(ems);
    }

    @Override
    public void add(Ems ems) {
        emsMapper.insertSelective(ems);
    }

    @Override
    public void getById(Integer id) {
        Ems ems = emsMapper.selectById(id);
        System.out.println(ems);
        req.setAttribute("ems", ems);
    }

    @Override
    public void removeById(Integer id) {
        emsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void getAll() {
        List<Ems> list = emsMapper.selectAll();
        req.setAttribute("list", list);
    }

    @Override
    public Boolean regist(Ems ems, String code) {
        String realCode = (String) session.getAttribute("code");
        if (code.equals(realCode)) {
            int i = emsMapper.insert(ems);
            if (i == 1) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Map<String, Object> login(String name, String password) {
        Ems ems = emsMapper.selectByPrimaryKey(name);
        Map<String, Object> map = new HashMap<>();
        if (ems == null) {
            map.put("msg", "用户不存在！");
            map.put("code", -200);
        } else if (!ems.getPassword().equals(password)) {
            map.put("code", -200);
            map.put("msg", "密码不正确！");
        } else {
            map.put("code", 200);
        }
        return map;
    }
}
