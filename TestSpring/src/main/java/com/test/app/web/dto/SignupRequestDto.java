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
public class SignupRequestDto {

	private String username;
	private String password;
	private String name;
	private String nickname;
	private String email;
	private String phone;
	private String address;
	private String address2;
	
	public User entity() {
		return User.builder()
				.username(username)
				.password(BCrypt.hashpw(password, BCrypt.gensalt()))
				.name(name)
				.nickname(nickname)
				.email(email)
				.phone(phone)
				.address(address)
				.address2(address2)
				.build();
	}
}
