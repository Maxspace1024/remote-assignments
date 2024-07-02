package com.example.Assignments;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
    @GetMapping("/")
    public String home() {
        return "Hello, My Server!";
    }

    @GetMapping("/data")
    public String data(@RequestParam(value="number", required = false) String number) {
        if (number == null) {
            return "Lack of Parameter";
        }

        int num, sum;
        try {
            num = Integer.parseInt(number);
            // summation formula
            if ( num > 0) {
                sum = (1 + num) * num /2;
                return String.valueOf(sum);
            } else {
                return "Wrong Parameter";
            }
        } catch (Exception e) {
            return "Wrong Parameter";
        }
    }
}
