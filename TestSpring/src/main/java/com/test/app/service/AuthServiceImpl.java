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
	@Autowired
	private Principal principal;
	
	@Override
	public boolean signup(SignupRequestDto signupRequestDto) {
		int result = userRepository.signup(signupRequestDto.entity());
		
		return result != 0 ? true : false;
	}

	@Override
	public boolean signin(String username, String password) {
		User user = principal.check(username, password);
		boolean result = BCrypt.checkpw(password, user.getPassword());
		
		if(result) {
			
			return true;
		}
		
		return false;
	}

}
