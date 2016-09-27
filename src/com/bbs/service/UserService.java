package com.bbs.service;

import java.util.List;

import com.bbs.entity.User;

public interface UserService {
	User findUser(User users);
	
    int changePassword(User user);
    
    int changePhone(User user);
    
    int changeMail(User user);
    
    String getPhone(Integer userId);
    
    List<User> getAllFriend(Integer userId);
    
    int updateUser(User user);

    int deleteFriend(Integer userId);
    
    String getEmail(Integer userId);
    
    List<User> getAllUser();
    
    int insertSelective(User record);
    
    int updateByPrimaryKeySelective(User user);
}
