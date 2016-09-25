package com.bbs.service;

import java.util.List;
import com.bbs.entity.Post;

public interface PostService {
	
	List<Post> getAllPost();
	
	int getCount();
	
    List<Post> getPost();
	    
	List<Post> getHotPost();
	
	List<Post> searchPost(Post post);
	
	int searchPostCount(Post post);
}
