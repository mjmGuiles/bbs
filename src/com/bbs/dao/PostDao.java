package com.bbs.dao;

import java.util.List;
import com.bbs.entity.Post;

public interface PostDao {
    int deleteByPrimaryKey(Integer postId);

    int insert(Post record);

    int insertSelective(Post record);

    Post selectByPrimaryKey(Integer postId);

    int updateByPrimaryKeySelective(Post record);

    int updateByPrimaryKey(Post record);
    
    List<Post> getAllPost();
    
    int getCount();
    
    List<Post> getPost();
    
    List<Post> getHotPost();
    
    List<Post> searchPost(Post post);
    
    int searchPostCount(Post post);
}