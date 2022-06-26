package com.test.app.web.dto;

import org.mindrot.jbcrypt.BCrypt;

import com.test.app.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class SigninRequestDto {

	private String username;
	private String password;
	
	public User signinEntity() {
		return User.builder()
				.username(username)
				.password(BCrypt.hashpw(password, BCrypt.gensalt()))
				.build();
	}
	
}
