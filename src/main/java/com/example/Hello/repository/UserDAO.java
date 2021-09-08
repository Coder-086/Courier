package com.example.Hello.repository;

import java.util.Random;

import com.example.Hello.model.User;
import com.example.Hello.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.batch.BatchProperties.Jdbc;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
    @Autowired
    private JdbcTemplate jdbcTemplate;

}
