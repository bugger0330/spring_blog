package com.test.app.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.User;
import com.test.app.service.AuthService;
import com.test.app.service.Principal;
import com.test.app.web.dto.SigninRequestDto;
import com.test.app.web.dto.SignupRequestDto;
import com.test.app.web.script.SigninScript;
import com.test.app.web.script.SignupScript;


@Controller
public class AuthController {
	

	@Autowired
	private AuthService authService;
	@Autowired
	private Principal principal;
	
	@ResponseBody
	@RequestMapping(value = "/auth/signup", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	public String signup(SignupRequestDto signupRequestDto) {
		SignupScript script = new SignupScript();
		boolean result = authService.signup(signupRequestDto);
		System.out.println(signupRequestDto);
		
		return script.script(result);
	}

	@ResponseBody
	@RequestMapping(value = "/auth/signin", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	public String signin(String username, String password, HttpServletRequest request) {
		User user = principal.check(username, password);
		boolean result = authService.signin(username, password);
		SigninScript script = new SigninScript();
		
		if(result) {
			HttpSession session = request.getSession();
			session.setAttribute("login", user);
		}else {
			return script.script(false);
		}
		return script.script(result);
	}
	
	@ResponseBody
	@RequestMapping(value = "/auth/username/check", method = RequestMethod.GET)
	public String checkUsername(String username) {
		boolean result = authService.usernameCheck(username);
		
		return Boolean.toString(result);
	}
	

	
	
	
}
