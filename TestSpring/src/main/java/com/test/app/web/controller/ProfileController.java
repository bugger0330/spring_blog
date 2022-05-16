package com.test.app.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.User;
import com.test.app.service.ProfileService;
import com.test.app.web.dto.ProfileChangeDto;

@Controller
public class ProfileController {

	@Autowired
	private ProfileService profileService;

	

	@ResponseBody
	@RequestMapping(value = "/profile/change", method = RequestMethod.PUT, produces = "text/plain; charset=utf-8")
	public String changeProfile(@RequestBody ProfileChangeDto profileChangeDto, HttpServletRequest request) {
		
		System.out.println("nickname : "+profileChangeDto.getNickname());
		System.out.println("address : "+profileChangeDto.getAddress());
		System.out.println("gender : "+profileChangeDto.getGender());

		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("login");
		profileChangeDto.setUsercode(user.getUsercode());
		
		boolean result =  profileService.changeProfile(profileChangeDto);
		
		System.out.println("컨트롤러 : " + result);
		return Boolean.toString(result);
	}

	@ResponseBody
	@RequestMapping(value = "/delete", method = RequestMethod.DELETE)
	public String deleteProfile(@RequestBody String username, HttpServletRequest request) {
		boolean result = profileService.deleteProfile(username);
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return Boolean.toString(result);
	}
	
	
	
	

}
