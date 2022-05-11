package com.test.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.domain.user.User;
import com.test.app.domain.user.UserRepository;

@Service
public class PrincipalImpl implements Principal{
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public User check(String username, String password) {
		
		return userRepository.signin(username);
	}

}
