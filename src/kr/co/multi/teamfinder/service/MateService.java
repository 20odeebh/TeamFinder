package kr.co.multi.teamfinder.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.multi.teamfinder.dao.MateMapper;
import kr.co.multi.teamfinder.dto.Post;

@Service
public class MateService {
	
	@Autowired
	private MateMapper mateMapper;
	
	public List<Post> getMatePosts(){
		return mateMapper.getMatePosts();
	}
	
	public int addMatePost(Post post) {
		int returnVal = 0;
		
		try {
			returnVal = mateMapper.addMatePost(post);
		} catch (Exception e) {
			returnVal = 0;
		}
		
		return returnVal;
	}
	
}