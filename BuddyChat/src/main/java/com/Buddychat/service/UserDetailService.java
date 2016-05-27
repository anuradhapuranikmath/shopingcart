package com.Buddychat.service;

import java.util.List;

import com.Buddychat.Model.UserDetail;



public interface UserDetailService {

	void addUser (UserDetail usersDetail);

    UserDetail getUserById (int userId);

    List<UserDetail> getAllUsers();

    UserDetail getUserByUsername (String username);
	
}
