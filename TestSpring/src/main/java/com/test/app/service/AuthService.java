package com.test.app.service;

import com.test.app.domain.user.User;
import com.test.app.web.dto.SignupRequestDto;

public interface AuthService {

	public boolean signup(SignupRequestDto signupRequestDto);
	public User signin(String username, String password);
	public boolean usernameCheck(String username);
}
