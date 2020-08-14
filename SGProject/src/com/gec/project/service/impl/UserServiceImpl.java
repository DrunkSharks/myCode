package com.gec.project.service.impl;

import java.util.List;

import com.gec.project.dao.IUserDao;
import com.gec.project.dao.entity.User;
import com.gec.project.dao.impl.UserDaoImpl;
import com.gec.project.service.IUserService;

public class UserServiceImpl implements IUserService{
	IUserDao iuser=new UserDaoImpl();

	@Override
	public List<User> listAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User login(String name, String password) {
		// TODO Auto-generated method stub
		return iuser.login(name,password);
	}

	@Override
	public User getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int save(User user) {
		return iuser.save(user);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
