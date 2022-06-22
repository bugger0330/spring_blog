package com.test.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.domain.user.Order;
import com.test.app.domain.user.OrderRepository;
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
		
		
		int result = orderRepository.setOrder(orderRequestDto.entity());
		return result != 0;
	}

	
}
