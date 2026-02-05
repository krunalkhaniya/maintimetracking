package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ModuleEntity;
import com.grownited.repository.ModuleRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ModuleController {

    @Autowired
    ModuleRepository moduleRepository;

    // Show Modules
    @GetMapping("/modules")
    public String modules(Model model,
                          HttpSession session) {

       

        model.addAttribute("modules",
                moduleRepository.findAll());

        return "Modules";
    }

    // Save Module
    @PostMapping("/modules/save")
    public String save(ModuleEntity module) {

        moduleRepository.save(module);

        return "redirect:/modules";
    }
}
