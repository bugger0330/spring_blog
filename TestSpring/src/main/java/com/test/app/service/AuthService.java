package com.test.app.service;

import com.test.app.domain.user.User;
import com.test.app.web.dto.SigninRequestDto;
import com.test.app.web.dto.SignupRequestDto;

public interface AuthService {

	public boolean signup(SignupRequestDto signupRequestDto);
	public User signin(String username, String password);
	public boolean usernameCheck(String username);
	public boolean userOver(SigninRequestDto signinRequestDto);
	public boolean updatePassword(SigninRequestDto signinRequestDto);
	public boolean passwordCheck(SigninRequestDto signinRequestDto);
}
