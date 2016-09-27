package com.bbs.dao;

import java.util.List;

import com.bbs.entity.User;

public interface UserDao {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User user);

    int updateByPrimaryKey(User record);
    
    User findUser(User users);
    
    int changePassword(User user);
    
    int changePhone(User user);
    
    int changeMail(User user);
    
    List<User> getAllFriend(Integer userId);
    
    String getPhone(Integer userId);
    
    int updateUser(User user);
    
    int deleteFriend(Integer userId);
    
    String getEmail(Integer userId);
    
    List<User> getAllUser();
    
    int deleteUser(Integer userId);
    
}