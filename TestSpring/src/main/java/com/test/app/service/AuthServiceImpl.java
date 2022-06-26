package com.test.app.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.domain.user.User;
import com.test.app.domain.user.UserRepository;
import com.test.app.web.dto.SigninRequestDto;
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
		if(username == null && password == null) {
			return null;
		}else {
			String dbPassword = userRepository.selectPassword(username);
			if(BCrypt.checkpw(password, dbPassword) == true) {
				return userRepository.signin(username);
			} else {
				return null;
			}
		}
		
	}

	@Override
	public boolean usernameCheck(String username) {
		return userRepository.usernameCheck(username) != 0;
		
	}

	@Override
	public boolean userOver(SigninRequestDto signinRequestDto) {
		int result = userRepository.userOver(signinRequestDto.getUsername());
		
		return result != 0;
	}

	@Override
	public boolean updatePassword(SigninRequestDto signinRequestDto) {
		int result = userRepository.updatePassword(signinRequestDto.signinEntity());
		return result != 0;
	}

	@Override
	public boolean passwordCheck(SigninRequestDto signinRequestDto) {
		if(signinRequestDto.getUsername() == null && signinRequestDto.getPassword() == null) {
			return false;
		}else {
			String dbPassword = userRepository.selectPassword(signinRequestDto.getUsername());
			if(BCrypt.checkpw(signinRequestDto.getPassword(), dbPassword) == true) {
				return true;
			} else {
				return false;
			}
		}
	}

}
