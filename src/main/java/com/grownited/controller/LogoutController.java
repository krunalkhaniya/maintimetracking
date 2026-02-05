package com.grownited.controller;

import jakarta.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LogoutController {

    // Logout User
    @GetMapping("/logout")
    public String logout(HttpSession session) {

        // Destroy full session
        session.invalidate();

        // Redirect to login page
        return "redirect:/login";
    }
}
