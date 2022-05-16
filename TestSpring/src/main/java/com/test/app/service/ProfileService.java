package com.test.app.service;

import com.test.app.web.dto.ProfileChangeDto;

public interface ProfileService {
	
	public boolean checkNickname(String username);
	public boolean changeProfile(ProfileChangeDto profileChangeDto);
	public boolean deleteProfile(String username);


}
