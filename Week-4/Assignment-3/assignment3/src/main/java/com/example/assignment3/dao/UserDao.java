package com.example.assignment3.dao;

import com.example.assignment3.dto.UserRequest;
import com.example.assignment3.model.User;

import java.util.List;

public interface UserDao {

    List<User> findUser(UserRequest userRequest);

    List<User> findUserByEmail(UserRequest userRequest);

    Integer createUser(UserRequest userRequest);
}
