package com.gao.serviceImpl;

import com.gao.mapper.UserMapper;
import com.gao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper um;

    @Override
    public Map<String, Object> login(String acc, String pwd) {
        return um.login(acc,pwd);
    }
}
