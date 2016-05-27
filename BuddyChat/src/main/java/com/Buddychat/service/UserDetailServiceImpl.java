package com.Buddychat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Buddychat.Dao.UserDetailDao;
import com.Buddychat.Model.UserDetail;
@Transactional
@Service
public class UserDetailServiceImpl implements UserDetailService {
	 @Autowired
	    private UserDetailDao usersDetailDao;

	public void addUser(UserDetail usersDetail) {
		// TODO Auto-generated method stub
		usersDetailDao.addUser(usersDetail);
	}

	public UserDetail getUserById(int userId) {
		// TODO Auto-generated method stub
		 return usersDetailDao.getUserById(userId);
	}

	public List<UserDetail> getAllUsers() {
		// TODO Auto-generated method stub
		 return usersDetailDao.getAllUsers();
	}

	public UserDetail getUserByUsername(String username) {
		// TODO Auto-generated method stub
		 return usersDetailDao.getUserByUsername(username);
	}

}