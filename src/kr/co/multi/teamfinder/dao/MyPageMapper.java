package kr.co.multi.teamfinder.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.co.multi.teamfinder.dto.User;

@Mapper
public interface MyPageMapper {

	public User findUserbyId(String userId);
	
	public void editMember(User user);
	
	public void signOut(User user);
	
}