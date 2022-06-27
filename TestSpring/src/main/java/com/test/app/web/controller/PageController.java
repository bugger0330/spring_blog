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
		
		return "auth/mypage";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET, produces = "text/html; charset=utf-8")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return "redirect: /app/auth/signin";
	}
	
	//주문배송 조회
	@RequestMapping(value = "/mypage/order-lists", method = RequestMethod.GET, produces = "text/html; charset=utf-8")
	public String orderLists() {
		return "mypage/order-lists";
	}
	
	
	//회원정보 수정
	@RequestMapping(value = "/mypage/modify", method = RequestMethod.GET, produces = "text/html; charset=utf-8")
	public String userModify() {
		return "mypage/user_modify";
	}
	//비밀번호 수정
	@RequestMapping(value = "/mypage/password-modify", method = RequestMethod.GET, produces = "text/html; charset=utf-8")
	public String passwordModify() {
		return "mypage/password_modify";
	}
	
	
	//회원 탈퇴
	@RequestMapping(value = "/mypage/user-over", method = RequestMethod.GET, produces = "text/html; charset=utf-8")
	public String userOver() {
		return "mypage/user-over";
	}
	//내가 등록한 상품 리스트
	@RequestMapping(value = "/mypage/product", method = RequestMethod.GET, produces = "text/html; charset=utf-8")
	public String myProduct() {
		return "mypage/my-product";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/* ================= 게시판 관련 ====================== */
	
	@RequestMapping(value = "/board/community", method = RequestMethod.GET)
	public String community() {
		return "board/community";
	}

	
	@RequestMapping(value = "/board/insert", method = RequestMethod.GET)
	public String boardInsert() {
		return "board/board_insert";
	}

	@RequestMapping(value = "/board/update/{num}", method = RequestMethod.GET)
	public String boardUpdate() {
		return "board/board_update";
	}
	
	
	@RequestMapping(value = "/board/read/{num}", method = RequestMethod.GET)
	public String boardRead() {
		return "board/board_read";
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
























