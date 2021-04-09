package kr.co.multi.teamfinder.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.multi.teamfinder.dao.UserMapper;
import kr.co.multi.teamfinder.dto.Post;
import kr.co.multi.teamfinder.dto.User;

@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	public int getUser(int id) {
		
		try {
			System.out.println(id);
			userMapper.getUser(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public User login(User user) {
		
		User result = null;
		
		try {
			result = userMapper.login(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public int joinUser(User user) throws RuntimeException{
		//회원가입을 하기위한 비지니스 로직이 있다면 처리!! 
		
		int returnValue = 0;
		
		
		try {
			returnValue =  userMapper.addUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			returnValue =  0;
		}
				
		return returnValue;
	}
	
	public int idCheck(String memberId) throws Exception {
		return userMapper.idCheck(memberId);
	}
	
	public List<Post> getPostsbyBoardType(int type){
		return userMapper.getPostsbyBoardType(type);
	}
	
}