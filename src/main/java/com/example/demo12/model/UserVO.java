package com.example.demo12.model;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class UserVO {
    private String userId;
    private String password;
    private String email;
    private String name;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date birthday;
    private int role;
}