package com.test.app.service;

import java.util.List;

import com.test.app.domain.user.Order;
import com.test.app.web.dto.OrderRequestDto;

public interface OrderService {

	public List<Order> getOrderList(String username);
	public boolean setOrder(OrderRequestDto orderRequestDto );
	public boolean selectDel(int product_code);
}
