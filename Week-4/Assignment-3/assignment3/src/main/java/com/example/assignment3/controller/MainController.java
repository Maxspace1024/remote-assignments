package com.example.assignment3.controller;

import com.example.assignment3.dto.UserRequest;
import com.example.assignment3.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MainController {

    Logger logger = LoggerFactory.getLogger(MainController.class);

    private static final String SESSION_LOGIN_VALID = "loginValid";

    private static final String MODEL_BLOCK_TYPE = "blockType";
    private static final String MODEL_LOGIN_BLOCK = "loginBlock";
    private static final String MODEL_SIGNUP_BLOCK = "signupBlock";
    private static final String MODEL_LOGIN_SUCCESS = "loginSuccess";
    private static final String MODEL_LOGIN_FAIL = "loginFail";

    @Autowired
    private UserService userService;

    @GetMapping(value = {"/", "/homePage"})
    public String homePage() {
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String getLogin(Model model) {
        // show login block
        model.addAttribute(MODEL_BLOCK_TYPE, MODEL_LOGIN_BLOCK);
        return "login_and_signup";
    }

    @GetMapping("/signup")
    public String getSignup(Model model) {
        // show signup block
        model.addAttribute(MODEL_BLOCK_TYPE, MODEL_SIGNUP_BLOCK);
        return "login_and_signup";
    }

    @GetMapping("/memberPage")
    public String getUserHome(HttpSession session, Model model) {
        Boolean isLoginValid = (Boolean) session.getAttribute(SESSION_LOGIN_VALID);
        // check validation of login
        if (isLoginValid != null && isLoginValid) {
            model.addAttribute(MODEL_BLOCK_TYPE, MODEL_LOGIN_SUCCESS);
        } else {
            model.addAttribute(MODEL_BLOCK_TYPE, MODEL_LOGIN_FAIL);
        }
        return "member_page";
    }

    @PostMapping(value = "/signup", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
    @ResponseBody
    public String postSignup(@ModelAttribute UserRequest userRequest) {
        JSONObject json = new JSONObject();

        // if email contains in database means duplication of email
        if (userService.checkUserEmailIsUnique(userRequest)) {
            json.put("success", userService.createUser(userRequest) == 1);
        } else {
            json.put("success", false);
        }
        return json.toString();
    }

    @PostMapping(value = "/login", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
    @ResponseBody
    public String postLogin(HttpSession session, @ModelAttribute UserRequest userRequest) {
        JSONObject json = new JSONObject();
        if (userService.checkUserLoginSuccess(userRequest)) {
            json.put("success", true);
            session.setAttribute(SESSION_LOGIN_VALID, true);
        } else {
            json.put("success", false);
            session.setAttribute(SESSION_LOGIN_VALID, false);
        }
        return json.toString();
    }
}
