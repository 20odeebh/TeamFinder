package kr.co.multi.teamfinder.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.multi.teamfinder.dao.MyPageMapper;
import kr.co.multi.teamfinder.dto.User;

@Service
public class MyPageService {

	@Autowired
	private MyPageMapper myPageMapper;

	public User findUserbyId(String userId) {
		return myPageMapper.findUserbyId(userId);
	}
	
	public void editMember(User user) {
		myPageMapper.editMember(user);
	}
	
	public void signOut(User user) {
		myPageMapper.signOut(user);
	}
	
}