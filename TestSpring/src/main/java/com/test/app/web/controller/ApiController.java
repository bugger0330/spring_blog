package com.test.app.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.User;

@Controller
public class ApiController {

	@RequestMapping(value = "/api/session", method = RequestMethod.GET)
	@ResponseBody
	public User getSession(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("login");
		System.out.println("api : "+user);
		
		return user;
	}
}
