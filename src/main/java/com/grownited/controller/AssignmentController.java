package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ProjectUserEntity;
import com.grownited.entity.TaskUserEntity;
import com.grownited.repository.ProjectUserRepository;
import com.grownited.repository.TaskUserRepository;

@Controller
public class AssignmentController {

    @Autowired
    ProjectUserRepository projectUserRepository;

    @Autowired
    TaskUserRepository taskUserRepository;

    // Assign Project
    @PostMapping("/assignProject")
    public String assignProject(ProjectUserEntity pu) {

        pu.setAssignStatus(1);

        projectUserRepository.save(pu);

        return "redirect:/projects";
    }

    // Assign Task
    @PostMapping("/assignTask")
    public String assignTask(TaskUserEntity tu) {

        tu.setAssignStatus(1);

        taskUserRepository.save(tu);

        return "redirect:/tasks";
    }
}
