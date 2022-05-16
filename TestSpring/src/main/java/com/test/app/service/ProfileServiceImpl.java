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
	public boolean checkNickname(String username) {
		
		Profile profile = profileRepository.checkNickname(username);
		
		return profile != null;
	} 

	@Override
	public boolean changeProfile(ProfileChangeDto profileChangeDto) {
		
		
		if(profileChangeDto.getNickname() != null) {
			int result = profileRepository.nickname(profileChangeDto.change());
			System.out.println("서비스 nickname: " + result);
			return result != 0;
		}
		if(profileChangeDto.getAddress() != null) {
			int result = profileRepository.address(profileChangeDto.change());
			System.out.println("서비스 address: " + result);
			return result != 0;
		}
		if(profileChangeDto.getGender() != null) {
			int result = profileRepository.gender(profileChangeDto.change());
			System.out.println("서비스 gender: " + result);
			return result != 0;
		} else {
			return false; 
		}
	}

	@Override
	public boolean deleteProfile(String username) {
	int result = profileRepository.deleteProfile(username);
		return result != 0;
	}










}
