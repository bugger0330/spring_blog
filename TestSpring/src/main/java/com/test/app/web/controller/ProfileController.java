package com.test.app.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.Profile;
import com.test.app.service.ProfileService;
import com.test.app.web.dto.ProfileChangeDto;

@Controller
public class ProfileController {

	@Autowired
	private ProfileService profileService;

	@ResponseBody
	@RequestMapping(value = "/mypage/user-modify", method = RequestMethod.GET)
	public Profile getProfile(String username) {
		Profile profile = profileService.getProfile(username);
		return profile;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mypage/user-modify/update", method = RequestMethod.PUT)
	public String insertProfile(@RequestBody ProfileChangeDto profileChangeDto) {
		System.out.println("컨트롤러 들어옴 : " + profileChangeDto.toString());
		boolean result = profileService.insertProfile(profileChangeDto);
		System.out.println("서비스 갔다옴 : " + result);
		return Boolean.toString(result);
	}
	

}
