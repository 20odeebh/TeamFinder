package kr.co.multi.teamfinder.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.multi.teamfinder.dto.Post;
import kr.co.multi.teamfinder.service.MateService;

@Controller
public class toFindMateController {
	
	@Autowired
	private MateService mateService;
	
	@GetMapping("/toFindMate")
	public String toFindMate(Model model, HttpSession session) {
		
		List<Post> posts = mateService.getMatePosts();
		
		model.addAttribute("posts", posts);
		
		return "/toFindMate/toFindMate";
	}
	
	@GetMapping("/toFindMateCreate")
	public String toFindMateCreate(HttpSession session) {
		return "/toFindMate/toFindMateCreate";
	}
	
	@GetMapping("/toFindMateDetail")
	public String toFindMateDetail(HttpSession session) {
		return "/toFindMate/toFindMateDetail";
	}
	
	@PostMapping("/addMatePost")
	public String addMatePost(Post post, HttpSession session) {
		
		
		int result = mateService.addMatePost(post);
				
		if(result == 1) {
			return "redirect:/toFindMate";
		}
		else
			return "redirect:/";
	}
	
}