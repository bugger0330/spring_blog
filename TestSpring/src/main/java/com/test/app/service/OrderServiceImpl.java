package com.test.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.domain.user.Order;
import com.test.app.domain.user.OrderInfo;
import com.test.app.domain.user.OrderRepository;
import com.test.app.web.dto.OrderInfoRequestDto;
import com.test.app.web.dto.OrderRequestDto;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderRepository orderRepository;

	@Override
	public List<Order> getOrderList(String username) {
		List<Order> orders = orderRepository.getOrderList(username);
		
		if(orders == null) {
			return null;
		}else {
			return orders;
		}
	}

	@Override
	public boolean setOrder(OrderRequestDto orderRequestDto) {
		List<Order> test = orderRepository.productCheck(orderRequestDto.entity());
		
		for(Order order : test) {
			if(order.getProduct_code() == orderRequestDto.getProduct_code()) {
				return false;
			}
		}
		
		int result = orderRepository.setOrder(orderRequestDto.entity());
		System.out.println("디비 갔다옴 : "+result);
		return result != 0;
		
	}
	
	
	
	@Override
	public boolean selectDel(int product_code) {
		
		int result = orderRepository.selectDel(product_code);
		return result != 0;
	}

	@Override
	public boolean insertUserinfo(OrderInfoRequestDto orderInfoRequestDto) {
		int result = orderRepository.insertUserinfo(orderInfoRequestDto.entity());
		return result != 0;
	}

	

	@Override
	public List<OrderInfo> getMypageUserInfo(String username) {
		List<OrderInfo> orderInfo = orderRepository.getMypageUserInfo(username);
		if(orderInfo == null) {
			return null;
		}else {
			return orderInfo;
		}
	}

	
}
