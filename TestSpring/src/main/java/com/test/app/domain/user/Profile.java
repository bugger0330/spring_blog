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

	private String username;
	private String nickname;
	private String address;
	private String gender;
}
