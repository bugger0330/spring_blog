package com.test.app.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.Profile;
import com.test.app.service.ProfileService;

@Controller
public class ProfileController {

	@Autowired
	private ProfileService profileService;

	@ResponseBody
	@RequestMapping(value = "/mypage/profile", method = RequestMethod.GET)
	public Profile getProfile(String username) {
		System.out.println("컨트롤러 들어옴 : " + username);
		Profile profile = profileService.getProfile(username);
		System.out.println("서비스 갔다옴 : " + profile.toString());
		return profile;
	}

	
	
	

}
