package kr.co.multi.teamfinder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.multi.teamfinder.dto.Post;

@Mapper
public interface PostMapper {
	
	public int addPost(Post post) throws Exception;
	
	public List<Post> getPosts();
	
	public Post getPost(String post_id);
}