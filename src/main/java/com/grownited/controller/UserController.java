package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    // Show Users
    @GetMapping("/users")
    public String users(Model model,
                        HttpSession session) {

        

        model.addAttribute("users",
                userRepository.findAll());

        return "Users";
    }
}
