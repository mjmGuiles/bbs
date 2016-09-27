package com.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbs.dao.UserDao;
import com.bbs.entity.User;


@Service
public class UserServiceimpl implements UserService {
	@Autowired
    UserDao ud;

	@Override
	public User findUser(User users) {
		// TODO Auto-generated method stub
		return ud.findUser(users);
	}

	@Override
	public int changePassword(User user) {
		// TODO Auto-generated method stub
		return ud.changePassword(user);
	}

	@Override
	public int changePhone(User user) {
		// TODO Auto-generated method stub
		return ud.changePhone(user);
	}

	@Override
	public int changeMail(User user) {
		// TODO Auto-generated method stub
		return ud.changeMail(user);
	}

	@Override
	public List<User> getAllFriend(Integer userId) {
		// TODO Auto-generated method stub
		return ud.getAllFriend(userId);
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return ud.updateUser(user);
	}

	@Override
	public String getPhone(Integer userId) {
		// TODO Auto-generated method stub
		return ud.getPhone(userId);
	}

	@Override
	public int deleteFriend(Integer userId) {
		// TODO Auto-generated method stub
		return ud.deleteFriend(userId);
	}

	@Override
	public String getEmail(Integer userId) {
		// TODO Auto-generated method stub
		return ud.getEmail(userId);
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return ud.getAllUser();
	}

	@Override
	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return ud.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(User user) {
		// TODO Auto-generated method stub
		return ud.updateByPrimaryKeySelective(user);
	}

}
