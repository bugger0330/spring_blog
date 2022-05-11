package com.test.app.domain.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepositoryImpl implements UserRepository{

	@Autowired
	private SqlSession session;
	
	private final String path = "com.test.app.domain.user.UserRepository";
	
	@Override
	public int signup(User user) {
		System.out.println(user);
		return session.insert(path + "signup", user);
	}

	@Override
	public User signin(String username) {
		
		return session.selectOne(path + "signin", username);
	}

	@Override
	public int usernameCheck(String username) {
		// TODO Auto-generated method stub
		return session.selectOne(path + "usernameCheck", username);
	}

}
