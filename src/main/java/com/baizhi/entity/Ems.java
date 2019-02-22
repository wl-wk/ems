package com.baizhi.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Ems implements Serializable {
    private Integer id;

    private String name;

    private String realName;

    private Integer sex;

    private String password;

}