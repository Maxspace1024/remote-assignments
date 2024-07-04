package com.example.Assignments;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class UserController {

    @GetMapping("/myName")
    public String myName(@CookieValue(value = "name", required = false) String name, Model model) {
        model.addAttribute("name", name);
        return "myname";
    }

    @GetMapping("/trackName")
    public String trackName(HttpServletResponse response, @RequestParam(value="name") String name) {
        // add cookie with name
        Cookie c = new Cookie("name", name);
        response.addCookie(c);
        return "myname";
    }

    @GetMapping("/clear")
    public String clear(HttpServletResponse response) {
        // remove the cookie
        Cookie c = new Cookie("name", null);
        c.setMaxAge(0);
        response.addCookie(c);
        return "myname";
    }
}
