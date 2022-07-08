package com.test.app.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.Profile;
import com.test.app.service.AuthService;
import com.test.app.service.ProfileService;
import com.test.app.web.dto.SigninRequestDto;

@Controller
public class ProfileController {

	@Autowired
	private ProfileService profileService;
	
	@Autowired
	private AuthService authService;

	@ResponseBody
	@RequestMapping(value = "/mypage/profile", method = RequestMethod.GET)
	public Profile getProfile(String username) {
		System.out.println("컨트롤러 들어옴 : " + username);
		Profile profile = profileService.getProfile(username);
		System.out.println("서비스 갔다옴 : " + profile.toString());
		return profile;
	}

	@ResponseBody
	@RequestMapping(value = "/mypage/password-update/check", method = RequestMethod.POST)
	public String updatePasswordCheck(SigninRequestDto signinRequestDto) {
		System.out.println("컨트롤러 들어옴 : " + signinRequestDto.toString());
		
		boolean result = authService.passwordCheck(signinRequestDto);
		
		return Boolean.toString(result);
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/mypage/password-update", method = RequestMethod.POST)
	public String updatePassword(SigninRequestDto signinRequestDto) {
		System.out.println("컨트롤러 들어옴 : " + signinRequestDto.toString());
		
			boolean result = authService.updatePassword(signinRequestDto);
			return Boolean.toString(result);
		
		
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/mypage/user-over/ok", method = RequestMethod.DELETE)
	public String userOver(@RequestBody SigninRequestDto signinRequestDto) {
		System.out.println("컨트롤러 들어옴 : " + signinRequestDto.toString());
		boolean result = authService.userOver(signinRequestDto);
		
		return Boolean.toString(result);
	}
	
	

}
