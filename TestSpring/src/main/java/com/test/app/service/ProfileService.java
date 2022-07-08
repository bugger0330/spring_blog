package com.test.app.service;

import com.test.app.domain.user.Profile;
import com.test.app.web.dto.ProfileChangeDto;

public interface ProfileService {
	
	public Profile getProfile(String username);
	public boolean profileUpload(ProfileChangeDto profileChangeDto);

}
