package com.baizhi.controller;

import com.baizhi.entity.Ems;
import com.baizhi.service.EmsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/ems")
public class EmsController {
    @Autowired
    private EmsService emsService;

    @RequestMapping("/login")
    @ResponseBody
    public Object login(String name, String pwd) {
        return emsService.login(name, pwd);
    }

    @RequestMapping("/regist")
    public Object regist(Ems ems, String code) {
        Boolean b = emsService.regist(ems, code);
        if (b) {
            return "redirect:/login.jsp";
        } else {
            return "redirect:/regist.jsp";
        }
    }

    @RequestMapping("/getAll")
    public String getAll() {
        emsService.getAll();
        return "forward:/emplist.jsp";
    }

    @RequestMapping("/remove")
    public String remove(Integer id) {
        emsService.removeById(id);
        return "redirect:/ems/getAll";
    }

    @RequestMapping("/getModify")
    public String showModify(Integer id) {
        emsService.getById(id);
        return "forward:/updateEmp.jsp";
    }

    @RequestMapping("/modify")
    public String modify(Ems ems) {
        emsService.modify(ems);
        return "redirect:/ems/getAll";
    }

    @RequestMapping("/add")
    public String add(Ems ems) {
        emsService.add(ems);
        return "redirect:/ems/getAll";
    }
}
