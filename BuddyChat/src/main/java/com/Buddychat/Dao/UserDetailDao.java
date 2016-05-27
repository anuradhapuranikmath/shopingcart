package com.Buddychat.Dao;

import java.util.List;

import com.Buddychat.Model.UserDetail;




public interface UserDetailDao {
	

	    void addUser (UserDetail usersDetail);

	    UserDetail getUserById (int userId);

	    List<UserDetail> getAllUsers();

	    UserDetail getUserByUsername (String username);

}