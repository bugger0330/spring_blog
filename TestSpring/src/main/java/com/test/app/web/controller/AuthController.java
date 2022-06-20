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
import com.test.app.service.AuthService;
import com.test.app.web.dto.SigninRequestDto;
import com.test.app.web.dto.SignupRequestDto;
import com.test.app.web.script.SignupScript;


@Controller
public class AuthController {
	

	@Autowired
	private AuthService authService;
	
	@ResponseBody
	@RequestMapping(value = "/auth/signup", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	public String signup(SignupRequestDto signupRequestDto) {
		System.out.println("컨트롤러 dto : "+signupRequestDto.toString());
		
		boolean result = authService.signup(signupRequestDto);
		SignupScript script = new SignupScript();
		
		
		return script.script(result);
	}

	@ResponseBody
	@RequestMapping(value = "/auth/signin", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	public String signin(@RequestBody SigninRequestDto signinRequestDto, HttpServletRequest request) {
		// selectPassword -> BCrypt -> true -> loadUser
		//								false -> return null
		System.out.println(signinRequestDto.getUsername() + "," + signinRequestDto.getPassword());
		User user = authService.signin(signinRequestDto.getUsername(), signinRequestDto.getPassword());
		
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("login", user);
			StringBuilder sb = new StringBuilder();
			sb.append("{ \"usercode\": \"" + user.getUsercode() +"\", " +
					"\"username\": \"" + user.getUsername() + "\", " + 
					"\"name\": \"" + user.getName() + "\", " + 
					"\"phone\": \"" + user.getPhone() + "\"}");
			return sb.toString();
		}else {
			return "null";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/auth/username/check", method = RequestMethod.GET)
	public String checkUsername(String username) {
		System.out.println("아이디 체크(아이디) : " + username);
		boolean result = authService.usernameCheck(username);
		
		return Boolean.toString(result);
	}
	

	@ResponseBody
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("login");
		session.invalidate();
		user = null;
		
		System.out.println("세션 삭제완료");
		
		
		return "true";
	}
	
	
}
