package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ProjectStatusEntity;
import com.grownited.repository.ProjectStatusRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class StatusController {

    @Autowired
    ProjectStatusRepository statusRepository;

    // Show Status
    @GetMapping("/status")
    public String status(Model model,
                         HttpSession session) {

        

        model.addAttribute("statusList",
                statusRepository.findAll());

        return "Status";
    }

    // Save Status
    @PostMapping("/status/save")
    public String save(ProjectStatusEntity status) {

        statusRepository.save(status);

        return "redirect:/status";
    }
}
