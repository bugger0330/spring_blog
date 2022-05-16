package com.test.app.web.dto;

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
	private String nickname;
	private String address;
	private String gender;
	
	
	
	public Profile change() {
		
		return Profile.builder()
				.usercode(usercode)
				.nickname(nickname)
				.address(address)
				.gender(gender)
				.build();
	}

}
