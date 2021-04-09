package kr.co.multi.teamfinder.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.multi.teamfinder.dto.Post;
import kr.co.multi.teamfinder.service.PostService;

@Controller
public class toFindTeamController {
	
	@Autowired
	private PostService postService;
	
	@GetMapping("/toFindTeam")
	public String toFindTeam(Model model, HttpSession session) {
		
		
		List<Post> posts = postService.getPosts();
		
		model.addAttribute("posts", posts);
		
		return "/toFindTeam/toFindTeam";
	}
	
	@GetMapping("/toFindTeamCreate")
	public String toFindTeamCreate(HttpSession session) {
		return "/toFindTeam/toFindTeamCreate";
	}
	
	@GetMapping("/toFindTeamDetail")
	public String toFindTeamDetail(HttpSession session) {
		return "/toFindTeam/toFindTeamDetail";
	}
	
	@PostMapping("/addPost")
	public String addPost(Post post, HttpSession session) {
		
		int result = postService.addPost(post);
				
		if(result == 1) {
			return "redirect:/toFindTeam";
		}
		else
			return "redirect:/";
	}
	
	@RequestMapping(value="/getPost", method = RequestMethod.GET)
	public String getPost(HttpServletRequest request, Model model, HttpSession session) {
		
		Post post = postService.getPost(request.getParameter("post_id"));
		
		model.addAttribute("post", post);
		
		return "/toFindTeam/toFindTeamDetail";
	}
}