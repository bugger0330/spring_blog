package com.test.app.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.Order;
import com.test.app.service.OrderService;
import com.test.app.web.dto.OrderInfoRequestDto;
import com.test.app.web.dto.OrderRequestDto;

@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	
	//장바구니 열었을때 리스트 보여주기
	@ResponseBody
	@RequestMapping(value = "/product/order", method = RequestMethod.POST)
	public List<Order> getOrderList(String username) {
		System.out.println("컨트롤러 들어옴 : " + username);
		List<Order> orders = orderService.getOrderList(username);
		System.out.println("서비스 갔다옴 : " + orders);
		return orders;
	}

	
	//상세페이지에서 장바구니 담기 클릭시
	@ResponseBody
	@RequestMapping(value = "/product/order/insert", method = RequestMethod.POST)
	public String setOrder(OrderRequestDto orderRequestDto) {
		System.out.println("컨트롤러 들어옴 : " + orderRequestDto.toString());
		boolean result = orderService.setOrder(orderRequestDto);
		System.out.println("서비스 갔다옴 : " + result);

		return Boolean.toString(result);
	}
	//장바구니에서 모두 구매하기 클릭시 이벤트
	@ResponseBody
	@RequestMapping(value = "/product/order2/insert", method = RequestMethod.POST)
	public String setOrder2(OrderRequestDto orderRequestDto) {
		System.out.println("컨트롤러 들어옴-order2/insert : " + orderRequestDto.toString());
		boolean result = orderService.setOrder2(orderRequestDto);
		System.out.println("서비스 갔다옴-order2/insert : " + result);
		
		return Boolean.toString(result);
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/product/order2/userinfo", method = RequestMethod.POST) 
	public String insertUserinfo(OrderInfoRequestDto orderInfoRequestDto) { 
		System.out.println("컨트롤러 들어옴-userinfo : " + orderInfoRequestDto.toString());
		boolean result = orderService.insertUserinfo(orderInfoRequestDto); 
		
		System.out.println("서비스 갔다옴-userinfo : " + result);
		return Boolean.toString(result); 
	}

	
	
	//장바구니에서 삭제 기능
	@ResponseBody
	@RequestMapping(value = "/product/order/delete/{product_code}", method = RequestMethod.DELETE)
	public String selectDel(@PathVariable int product_code) {
		System.out.println("컨트롤러 들어옴 : " + product_code);
		boolean result = orderService.selectDel(product_code);
		System.out.println("서비스 갔다옴 : " + result);
		return Boolean.toString(result);
	}
	
	
	//결제완료 시 장바구니 데이터 삭제 
	@ResponseBody
	@RequestMapping(value = "/product/order1/delete/{product_code}", method = RequestMethod.DELETE)
	public String selectDel2(@PathVariable int product_code) {
		System.out.println("컨트롤러 들어옴delete2 : " + product_code);
		boolean result = orderService.selectDel(product_code);
		System.out.println("서비스 갔다옴delete2 : " + result);
		return Boolean.toString(result);
	}
	
	
	
	
	
}
