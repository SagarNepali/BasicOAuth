package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomeController {
	
	@Autowired
	AuthenticationManager authenticationManager;
	
	@GetMapping(value="/")
	@ResponseBody
	public String test(Authentication authentication){
		return authentication.getName();
	}
	
	
	@GetMapping(value="/login")
	public String login(){
		return "login";
	}
	
	@GetMapping(value="/api/1")
	@ResponseBody 
	public String api(){
		return "1";
	}
	
}
