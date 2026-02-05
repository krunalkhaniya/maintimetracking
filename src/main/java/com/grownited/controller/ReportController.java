package com.grownited.controller;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.repository.TaskUserRepository;

@Controller
public class ReportController {

    @Autowired
    TaskUserRepository taskUserRepository;

    // Show Reports
    @GetMapping("/reports")
    public String reports(Model model,
                          HttpSession session) {

        // Session Check
       

        // Fetch All Report Data
        model.addAttribute("reports",
                taskUserRepository.findAll());

        return "Reports";
    }
}
