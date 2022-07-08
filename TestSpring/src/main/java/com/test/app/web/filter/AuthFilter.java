package com.test.app.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.app.domain.user.User;

public class AuthFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest servletRequest = (HttpServletRequest)request;
		HttpServletResponse servletResponse = (HttpServletResponse)response;
		
		HttpSession session = servletRequest.getSession();
		User user = (User)session.getAttribute("login");
		System.out.println(user);
		
		String path = servletRequest.getRequestURI();
		System.out.println(path);
		
		
		  if(path.contains("/app/product/order")) { 
			  if(user == null) {
			  servletResponse.sendRedirect("/app/auth/signin"); 
			  return; 
			  }
		  }
		  if(path.contains("/app/product/order2")) { 
			  if(user == null) {
				  servletResponse.sendRedirect("/app/auth/signin"); 
				  return; 
			  }
		  }
		  if(path.contains("/app/product/register")) { 
			  if(user == null) {
				  servletResponse.sendRedirect("/app/auth/signin"); 
				  return; 
			  }
		  }
		  if(path.contains("/app/mypage/order-lists")) { 
			  if(user == null) {
				  servletResponse.sendRedirect("/app/auth/signin"); 
				  return; 
			  }
		  }
		  if(path.contains("/app/mypage/modify")) { 
			  if(user == null) {
				  servletResponse.sendRedirect("/app/auth/signin"); 
				  return; 
			  }
		  }
		  if(path.contains("/app/mypage/password-modify")) { 
			  if(user == null) {
				  servletResponse.sendRedirect("/app/auth/signin"); 
				  return; 
			  }
		  }
		  if(path.contains("/app/mypage/user-over")) { 
			  if(user == null) {
				  servletResponse.sendRedirect("/app/auth/signin"); 
				  return; 
			  }
		  }
		  if(path.contains("/app/auth/mypage")) { 
			  if(user == null) {
				  servletResponse.sendRedirect("/app/auth/signin"); 
				  return; 
			  }
		  }
		  
			
		chain.doFilter(request, response);
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}



	

}
