package com.test.app.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.domain.user.User;
import com.test.app.domain.user.UserRepository;
import com.test.app.web.dto.SignupRequestDto;

@Service
public class AuthServiceImpl implements AuthService {

	@Autowired
	private UserRepository userRepository;
	
	
	
	@Override
	public boolean signup(SignupRequestDto signupRequestDto) {
		if(userRepository.usernameCheck(signupRequestDto.getUsername()) != 0) {
			return false;
		}else {
			int result = userRepository.signup(signupRequestDto.entity());
			return result != 0;
		}
	}

	@Override
	public User signin(String username, String password) {
		String dbPassword = userRepository.selectPassword(username);
		if(BCrypt.checkpw(password, dbPassword) == true) {
			return userRepository.signin(username);
		} else {
			return null;
		}
	}

	@Override
	public boolean usernameCheck(String username) {
		return userRepository.usernameCheck(username) != 0;
		
	}

}
