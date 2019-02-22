package com.baizhi;

import com.baizhi.dao.EmsMapper;
import com.baizhi.entity.Ems;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TestEms {
    @Autowired
    private EmsMapper emsMapper;

    @Test
    public void test1() {
        Ems ems = emsMapper.selectByPrimaryKey("wl");
        System.out.println(ems);
    }
}
