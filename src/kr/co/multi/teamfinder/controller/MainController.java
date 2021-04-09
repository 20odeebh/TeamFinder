package kr.co.multi.teamfinder.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.multi.teamfinder.dto.Post;
import kr.co.multi.teamfinder.dto.User;
import kr.co.multi.teamfinder.service.UserService;

@Controller
public class MainController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = {"/index", "/"}, method = RequestMethod.GET)
//	@GetMapping("/index")
	public String index(Model model) {
		
		List<Post>  teamList = userService.getPostsbyBoardType(1);
		List<Post>  mateList = userService.getPostsbyBoardType(0);
		
		model.addAttribute("teamList", teamList);
		model.addAttribute("mateList", mateList);
		
		return "/main/index";
	}
	
	@GetMapping("/login")
	public String hello() {
		return "/main/user/login";
	}
	
	@GetMapping("/signUp")
	public String main() {
		return "/main/user/signUp";
	}
	
	@PostMapping("/login.do")
	public String login(HttpServletRequest request, @ModelAttribute User user){
		
		HttpSession session = request.getSession();
		
		user.setUser_id(user.getUser_id());
		user.setUser_pwd(user.getUser_pwd());
		
		User result = userService.login(user);
						
		if(result != null) {
			session.setAttribute("loginCheck", true);
			session.setAttribute("id", result.getUser_id());
			session.setAttribute("user_index", result.getUser_index());
			return "redirect:/index";
		}else {
			return "redirect:/login";
		}
	
	}
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
    public String logoutProcess(HttpSession session) {
                           
        session.invalidate();
        
        return "redirect:/index";
    }
	
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String member_id) throws Exception{
				
		int result = userService.idCheck(member_id);
		
			if(result != 0) {
				return "fail"; // 중복 아이디가 존재 
			}
			else { 
				return "success"; // 중복 아이디 x 
			}
	}
	
	@PostMapping("/join")
	public String join(@ModelAttribute User user) {
		int result = userService.joinUser(user);
		
		if(result == 1)
			return "redirect:/login";
		else
			return "redirect:/signUp";
	}
	
	@PostMapping
	public void addUser(@RequestBody User user) {
		userService.joinUser(user);
	}
	
}