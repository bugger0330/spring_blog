package com.test.app.service;

import com.test.app.web.dto.SigninRequestDto;
import com.test.app.web.dto.SignupRequestDto;

public interface AuthService {

	public boolean signup(SignupRequestDto signupRequestDto);
	public boolean signin(String username, String password);
	public boolean usernameCheck(String username);
}
