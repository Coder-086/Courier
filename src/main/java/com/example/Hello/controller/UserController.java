package com.example.Hello.controller;

import com.example.Hello.dto.UserDTO;
import com.example.Hello.model.User;
import com.example.Hello.repository.UserRepo;
import com.example.Hello.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @Autowired
    UserRepo userRepo;

    @Autowired
    UserService userService;

    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public ResponseEntity signup(@RequestBody UserDTO userparam) throws InterruptedException{
        User user = new User();
        user.setUsername(userparam.getUsername());
        user.setEmail(userparam.getEmail());
        user.setPassword(userparam.getPassword());

        if (!userService.isAccountExist(userparam)) {
            userRepo.save(user);
            return new ResponseEntity<>(HttpStatus.OK);
        }

        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("User Already Registered!!!");

    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ResponseEntity login(@RequestBody UserDTO user) throws  InterruptedException{

        if (userService.isValidUser(user)) {

            return new ResponseEntity<>(HttpStatus.OK);
        }


        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }

    @RequestMapping(value = "/sendotp", method = RequestMethod.POST)
    public ResponseEntity sendOtp(@RequestBody UserDTO userparam) throws Exception{
        System.out.println(">>>>>>>>" + userparam.getEmail());

        User user = new User();
        user.setEmail(userparam.getEmail());

        if(userService.isValidEmail(user)){
            userService.otpGenerator(user);
            return new ResponseEntity<>(HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
    }
}
