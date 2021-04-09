package kr.co.multi.teamfinder.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.co.multi.teamfinder.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
}