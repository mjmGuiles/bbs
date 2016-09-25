package com.bbs.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbs.dao.PostDao;
import com.bbs.entity.Post;

@Service
public class PostServiceimpl implements PostService {
    @Autowired
    PostDao pd;
	
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return pd.getCount();
	}

	@Override
	public List<Post> getAllPost() {
		// TODO Auto-generated method stub
		return pd.getAllPost();
	}

	@Override
	public List<Post> getPost() {
		// TODO Auto-generated method stub
		return pd.getPost();
	}

	@Override
	public List<Post> getHotPost() {
		// TODO Auto-generated method stub
		return pd.getHotPost();
	}

	@Override
	public List<Post> searchPost(Post post) {
		// TODO Auto-generated method stub
		return pd.searchPost(post);
	}

	@Override
	public int searchPostCount(Post post) {
		// TODO Auto-generated method stub
		return pd.searchPostCount(post);
	}
	

}
