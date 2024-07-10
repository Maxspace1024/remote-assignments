package com.example.assignment3.dao.impl;

import com.example.assignment3.dao.UserDao;
import com.example.assignment3.dto.UserRequest;
import com.example.assignment3.model.User;
import com.example.assignment3.rowmapper.UserRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class UserDaoImpl implements UserDao {

    @Autowired
    private NamedParameterJdbcTemplate template;

    @Override
    public List<User> findUser(UserRequest userRequest) {
        String sql = "SELECT * FROM user WHERE email = :email and password = :password";
        Map<String, Object> map = new HashMap<>();
        map.put("email", userRequest.getEmail());
        map.put("password", userRequest.getPassword());

        return template.query(sql, map, new UserRowMapper());
    }

    @Override
    public List<User> findUserByEmail(UserRequest userRequest) {
        String sql = "SELECT * FROM user WHERE email = :email";
        Map<String, Object> map = new HashMap<>();
        map.put("email", userRequest.getEmail());

        return template.query(sql, map, new UserRowMapper());
    }

    @Override
    public Integer createUser(UserRequest userRequest) {
        String sql = "INSERT INTO user (id, email, password) VALUES (default, :email, :password)";
        Map<String, Object> map = new HashMap<>();
        map.put("email", userRequest.getEmail());
        map.put("password", userRequest.getPassword());

        return template.update(sql, map);
    }
}
