package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ProjectEntity;
import com.grownited.repository.ProjectRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProjectsController {

    @Autowired
    ProjectRepository projectRepository;

    // Show Projects
    @GetMapping("/projects")
    public String projects(){
        return "Projects";
       
    }


    // Save Project
    @PostMapping("/projects/save")
    public String save(ProjectEntity project) {

        projectRepository.save(project);

        return "redirect:/projects";
    }
}
