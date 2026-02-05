package com.grownited.controller;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller
public class SettingsController {

    @Autowired
    UserRepository userRepository;

    // ================= OPEN SETTINGS PAGE =================
    @GetMapping("/settings")
    public String settings(Model model,
                           HttpSession session) {

        // Session Check
        UserEntity user =
            (UserEntity) session.getAttribute("user");


        // Send User Data to JSP
        model.addAttribute("user", user);

        return "Settings";
    }

    // ================= UPDATE PROFILE =================
    @PostMapping("/settings/update")
    public String updateProfile(UserEntity formUser,
                                HttpSession session,
                                Model model) {

        UserEntity sessionUser =
            (UserEntity) session.getAttribute("user");

        

        // Fetch from DB
        UserEntity dbUser =
            userRepository.findById(sessionUser.getUserId())
                          .orElse(null);

        if (dbUser == null) {
            return "redirect:/login";
        }

        // Update Fields
        dbUser.setFirstName(formUser.getFirstName());
        dbUser.setLastName(formUser.getLastName());
        dbUser.setContactNum(formUser.getContactNum());
        dbUser.setProfilePicURL(formUser.getProfilePicURL());

        userRepository.save(dbUser);

        // Update Session
        session.setAttribute("user", dbUser);

        model.addAttribute("msg", "Profile Updated Successfully");

        return "redirect:/settings";
    }

    // ================= CHANGE PASSWORD =================
    @PostMapping("/settings/changePassword")
    public String changePassword(String oldPassword,
                                 String newPassword,
                                 HttpSession session,
                                 Model model) {

        UserEntity user =
            (UserEntity) session.getAttribute("user");

        if (user == null) {
            return "redirect:/login";
        }

        UserEntity dbUser =
            userRepository.findById(user.getUserId())
                          .orElse(null);

        if (dbUser == null) {
            return "redirect:/login";
        }

        // Check Old Password
        if (!dbUser.getPassword().equals(oldPassword)) {

            model.addAttribute("error",
                    "Old Password is Incorrect");

            return "Settings";
        }

        // Update Password
        dbUser.setPassword(newPassword);

        userRepository.save(dbUser);

        session.setAttribute("user", dbUser);

        model.addAttribute("msg",
                "Password Changed Successfully");

        return "redirect:/settings";
    }
}
