package com.example.assignment3.service.impl;

import com.example.assignment3.dao.UserDao;
import com.example.assignment3.dto.UserRequest;
import com.example.assignment3.model.User;
import com.example.assignment3.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public boolean checkUserEmailIsUnique(UserRequest userRequest) {
        List<User> users = userDao.findUserByEmail(userRequest);
        return users.isEmpty();
    }

    @Override
    public Integer createUser(UserRequest userRequest) {
        return userDao.createUser(userRequest);
    }

    @Override
    public boolean checkUserLoginSuccess(UserRequest userRequest) {
        List<User> users = userDao.findUser(userRequest);

        // find only one row means match email and password
        return users.size() == 1;
    }
}
