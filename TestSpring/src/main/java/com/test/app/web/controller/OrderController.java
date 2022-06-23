package com.test.app.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.Order;
import com.test.app.service.OrderService;
import com.test.app.web.dto.OrderRequestDto;

@Controller
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	@ResponseBody
	@RequestMapping(value = "/product/order", method = RequestMethod.POST)
	public List<Order> getOrderList(String username) {
		System.out.println("컨트롤러 들어옴 : " + username);
		List<Order> orders = orderService.getOrderList(username);
		System.out.println("서비스 갔다옴 : " + orders);
		return orders;
	}


	@ResponseBody
	@RequestMapping(value = "/product/order/delete/{product_code}", method = RequestMethod.DELETE)
	public String selectDel(@PathVariable int product_code) {
		System.out.println("컨트롤러 들어옴 : " + product_code);
		boolean result = orderService.selectDel(product_code);
		System.out.println("서비스 갔다옴 : " + result);
		return Boolean.toString(result);
	}
	
	
}
