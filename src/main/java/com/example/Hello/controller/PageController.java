package com.example.Hello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class PageController {

    @RequestMapping("/")
    public String login(){
        return "login";
    }

    @RequestMapping("/forget")
    public String forget(){
        return "forget";
    }

    @RequestMapping("/otp")
    public String otp(){ return "otp"; }

    @RequestMapping("/setpassword")
    public String setPassword(){ return "setpassword";}
}
