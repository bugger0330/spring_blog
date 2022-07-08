package com.test.app.web.dto;

import org.mindrot.jbcrypt.BCrypt;

import com.test.app.domain.user.Profile;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class ProfileChangeDto {
	
	private int usercode;
	private String username;
	private String name;
	private String nickname;
	private String email;
	private String phone;
	private String address_num;
	private String address;
	private String address2;
	
	
	public Profile entity() {
		return Profile.builder()
				.usercode(usercode)
				.username(username)
				.name(name)
				.nickname(nickname)
				.email(email)
				.phone(phone)
				.address_num(address_num)
				.address(address)
				.address2(address2)
				.build();
	}

}











