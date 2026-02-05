package com.grownited.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.ModuleRepository;
import com.grownited.repository.ProjectRepository;
import com.grownited.repository.ProjectUserRepository;
import com.grownited.repository.TaskRepository;
import com.grownited.repository.TaskUserRepository;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;

@Controller
public class SessionController {

	@Autowired
	UserRepository userRepository;
	ProjectRepository projectRepository;
	UserDetailRepository userDetailRepository;
	ModuleRepository moduleRepository; 
	TaskRepository taskRepositiry;
	TaskUserRepository taskUserRepository; 
	ProjectUserRepository projectUserRepository; 
	
	
	
	@GetMapping("/signup")
	public String opensignuppage() {
		return "Signup";
	}
@GetMapping("/login")
public String openloginpage() {
	return "Login";
}

@GetMapping("/forgotpassward")
public String openforgotpasswardpage() {
	return "login";
}

@GetMapping("/forgetpassword")
public String openForgetPassword() {
	return "ForgetPassword";
}
@GetMapping("/test")
public String test() {
    return "Test";
}

@PostMapping("/register")
public String register(UserEntity userEntity, UserDetailEntity userdetailentity) {
	System.out.println(userEntity.getFirstName());
	System.out.println(userEntity.getLastName());
	System.out.println(userEntity.getEmail());
	System.out.println(userEntity.getPassword());
	
	System.out.println(userEntity.getGender());
		
	System.out.println("Processor => " + Runtime.getRuntime().availableProcessors());
	
	userEntity.setRole("PARTICIPANT");
	userEntity.setActive(true);
	userEntity.setCreatedAt(LocalDate.now());
	
	
	// users insert -> UserRepository
	// new -> X
  
	userRepository.save(userEntity);
	 
	return "Login";
}


				

	
	@GetMapping("Users")
	public String openUserjsp() 
	{
	
	return "User";
	
	
	}
	{
	
	
}}


