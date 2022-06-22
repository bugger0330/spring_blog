package com.test.app.web.controller;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.app.domain.user.ProfileRepository;
import com.test.app.domain.user.User;
import com.test.app.service.BoardService;
import com.test.app.service.ProfileService;

@Controller
public class PageController {
	
	@Autowired
	private ProfileService profileService;
	
	@Autowired
	private ProfileRepository profileRepository;
	
	/* ================= 가입 관련 ====================== */

	@RequestMapping(value = "/auth/signup", method = RequestMethod.GET)
	public String getSignup() {
		
		return "auth/signup";
	}
	@RequestMapping(value = "/auth/signin", method = RequestMethod.GET)
	public String getSignin() {
		
		return "auth/signin";
	}
	
	@RequestMapping(value = "/auth/mypage", method = RequestMethod.GET)
	public String getMypage(ServletRequest request, ServletResponse response) {
		HttpServletRequest servletRequest = (HttpServletRequest)request;
		HttpServletResponse servletResponse = (HttpServletResponse)response;
		
		HttpSession session = servletRequest.getSession();
		User user = (User)session.getAttribute("login");
		String username = user.getUsername();
		session.setAttribute("profile", profileRepository.checkNickname(username));
//		profileService.checkNickname(username);
		return "auth/mypage";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET, produces = "text/html; charset=utf-8")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return "redirect: /app/auth/signin";
	}
	
	
	/* ================= 게시판 관련 ====================== */
	
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String boardList() {
		return "board/board_list";
	}
	
	
	@RequestMapping(value = "/board/insert", method = RequestMethod.GET)
	public String boardInsert() {
		return "board/board_insert";
	}
	@RequestMapping(value = "/board/update", method = RequestMethod.GET)
	public String boardUpdate() {
		return "board/board_update";
	}
	
	@RequestMapping(value = "/board/community", method = RequestMethod.GET)
	public String community() {
		return "board/community";
	}
	
	/* ================= 홈 헤더 푸터 ====================== */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "/home";
	}
	
	
	@RequestMapping(value = "/top/header", method = RequestMethod.GET)
	public String header() {
		return "top/header";
	}
	@RequestMapping(value = "/top/footer", method = RequestMethod.GET)
	public String footer() {
		return "/top/footer";
	}
	
	/* =================  ====================== */
	
	
	
	
	
	/* ================= 상품 관련 ====================== */
	
	@RequestMapping(value = "/product/card", method = RequestMethod.GET)
	public String card() {
		return "product/card";
	}
	@RequestMapping(value = "/product/no", method = RequestMethod.GET)
	public String noMoney() {
		return "product/no_money";
	}
	@RequestMapping(value = "/product/order", method = RequestMethod.GET)
	public String order() {
		return "product/order";
	}
	@RequestMapping(value = "/product/order2", method = RequestMethod.GET)
	public String order2() {
		return "product/order2";
	}
	@RequestMapping(value = "/product/register", method = RequestMethod.GET)
	public String register() {
		return "product/register";
	}
	
	@RequestMapping(value = "/product/detail/{product_code}", method = RequestMethod.GET)
	public String detail() {
		return "product/detail";
	}
	
	

	/* =================  ====================== */
	
	
	
}
























