package com.test.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.domain.user.Profile;
import com.test.app.domain.user.ProfileRepository;
import com.test.app.web.dto.ProfileChangeDto;

@Service
public class ProfileServiceImpl implements ProfileService {
	
	@Autowired
	private ProfileRepository profileRepository;

	@Override
	public Profile getProfile(String username) {
		Profile profile = profileRepository.getProfile(username);
		if(profile != null) {
			return profile;
		}else {
			return null;
		}
		
	}






}
