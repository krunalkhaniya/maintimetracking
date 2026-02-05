package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.TaskEntity;
import com.grownited.repository.TaskRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class TaskController {

    @Autowired
    TaskRepository taskRepository;

    // Show Tasks
    @GetMapping("/tasks")
    public String tasks(Model model,
                        HttpSession session) {

        

        model.addAttribute("tasks",
                taskRepository.findAll());

        return "Tasks";
    }

    // Save Task
    @PostMapping("/tasks/save")
    public String save(TaskEntity task) {

        taskRepository.save(task);

        return "redirect:/tasks";
    }
}
