package com.gao.controller;

import com.gao.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService us;

    @RequestMapping("login")
    @ResponseBody
    public Map<String,Object> login(){
        Map<String,Object> map = us.login("admin","admin");
        return map;
    }

    @Test
    public void loginTest(){
        Map<String,Object> map = us.login("admin","admin");
        System.out.println(map);
    }

}
