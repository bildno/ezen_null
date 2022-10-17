package com.study.springboot.Vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class User {
    private String userName;
    private String password;
    private String content;
    private String sendDate;
    private String isRead;

    public User(String userName, String content) {
        this.userName=userName;
        this.content=content;
    }
}
