package kr.co.multi.teamfinder.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.multi.teamfinder.dto.User;
import kr.co.multi.teamfinder.service.MyPageService;

@Controller
public class MypageController {
	
	@Autowired
	private MyPageService myPageService;
	
	@GetMapping("/modifyUser")
	public String modifyUser(HttpSession session) {
		return "/myPage/modifyUser";
	}
	
	@GetMapping("/signOutUser")
	public String signOutUser(HttpSession session) {
		return "/myPage/signOutUser";
	}
	
	@PostMapping("/member_edit")
	public String memeber_edit(HttpSession session, User user) {
		
		String userId = (String)session.getAttribute("id");
		
		user.setUser_id((String)session.getAttribute("id"));
		
		User com = myPageService.findUserbyId(userId);
				
		if(user.getUser_pwd().equals("")) {
			user.setUser_pwd(com.getUser_pwd());
		}
		if(user.getUser_email().equals("")) {
			user.setUser_email(com.getUser_email());
		}
		
		if(user.getRegion().equals("")) {
			user.setRegion(com.getRegion());
		}
		if(user.getUser_image().equals("")) {
			user.setUser_image(com.getUser_image());
		}
		if(user.getUser_stack().equals("")) {
			user.setUser_stack(com.getUser_stack());
		}
		if(user.getUser_email().equals("")) {
			user.setUser_email(com.getUser_email());
		}
		
		
		myPageService.editMember(user);
		
		return"/main/index";
	}
	
	@PostMapping("/signOut")
	public String signOut(HttpSession session, User user) {
		
		user.setUser_id((String)session.getAttribute("id"));
		
		myPageService.signOut(user);
		
		session.invalidate();
		
		return "redirect:/index";
	}
}