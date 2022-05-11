package com.test.app.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.service.ProfileService;
import com.test.app.web.dto.ProfileChangeDto;

@Controller
public class ProfileController {

	@Autowired
	private ProfileService profileService;
	
	@ResponseBody
	@RequestMapping(value = "/profile/change", method = RequestMethod.POST, produces = "text/plain; charset=utf-8")
	public String changeProfile(ProfileChangeDto profileChangeDto) {
//		
		boolean result =  profileService.changeProfile(profileChangeDto);
		
		return Boolean.toString(result);
	}
}
