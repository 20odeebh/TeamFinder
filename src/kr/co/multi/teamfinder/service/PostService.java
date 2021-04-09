package kr.co.multi.teamfinder.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.multi.teamfinder.dao.PostMapper;
import kr.co.multi.teamfinder.dto.Post;

@Service
public class PostService {
	
	@Autowired
	private PostMapper postMapper;

	public int addPost(Post post) {
		int returnVal = 0;
				
		try {
			returnVal = postMapper.addPost(post);
		} catch (Exception e) {
			returnVal = 0;
		}
		
		return returnVal;
	}
	
	public List<Post> getPosts(){
		return postMapper.getPosts();
	}
	
	public Post getPost(String post_id) {
		return postMapper.getPost(post_id);
	}
	
}