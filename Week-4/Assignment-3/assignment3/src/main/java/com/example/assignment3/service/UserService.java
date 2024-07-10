package com.example.assignment3.service;

import com.example.assignment3.dto.UserRequest;

public interface UserService {

    boolean checkUserEmailIsUnique(UserRequest userRequest);

    Integer createUser(UserRequest userRequest);

    boolean checkUserLoginSuccess(UserRequest userRequest);
}
