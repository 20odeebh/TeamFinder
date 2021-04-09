package kr.co.multi.teamfinder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.multi.teamfinder.dto.Post;
import kr.co.multi.teamfinder.dto.User;

@Mapper
public interface UserMapper {
	public User getUser(int id);
	
	public User login(User user);
	
	public int idCheck(String member_id);
	
	public int addUser(User user) throws Exception;
	
	public void joinUser(User user);
	
	public List<Post> getPostsbyBoardType(int type);
}