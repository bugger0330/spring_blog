package com.test.app.domain.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Profile {

	private int usercode;
	private String username;
	private String name;
	private String nickname;
	private String email;
	private String phone;
	private String address;
	private String address2;
}
