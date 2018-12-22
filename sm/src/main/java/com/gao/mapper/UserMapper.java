package com.gao.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.Map;

@Mapper
public interface UserMapper {

    @Select("select * from userinfo where uacc=#{acc} and upwd=#{pwd}")
    Map<String, Object> login(String acc, String pwd);

}
