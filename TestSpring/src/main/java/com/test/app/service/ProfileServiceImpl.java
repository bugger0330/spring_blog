package com.test.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.domain.user.ProfileRepository;
import com.test.app.web.dto.ProfileChangeDto;

@Service
public class ProfileServiceImpl implements ProfileService {
	
	@Autowired
	private ProfileRepository profileRepository;



	@Override
	public boolean changeProfile(ProfileChangeDto profileChangeDto) {
		if(profileChangeDto.getNickname() != null) {
			int result = profileRepository.checkNickname(profileChangeDto.change());
			return result != 0;
		} else if(profileChangeDto.getAddress() != null) {
			int result = profileRepository.checkNickname(profileChangeDto.change());
			return result != 0;
		} else if(profileChangeDto.getGender() != null) {
			int result = profileRepository.checkNickname(profileChangeDto.change());
			return result != 0;
		} else {
			return false; 
		}
	} 




}
