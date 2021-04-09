package kr.co.multi.teamfinder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.multi.teamfinder.dto.Post;

@Mapper
public interface MateMapper {
	public List<Post> getMatePosts();
	
	public int addMatePost(Post post) throws Exception;
	
}