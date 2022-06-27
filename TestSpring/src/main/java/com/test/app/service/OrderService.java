package com.test.app.service;

import java.util.List;

import com.test.app.domain.user.Order;
import com.test.app.web.dto.OrderInfoRequestDto;
import com.test.app.web.dto.OrderRequestDto;

public interface OrderService {

	public List<Order> getOrderList(String username);
	public List<Order> getOrderList2(String username);
	public boolean setOrder(OrderRequestDto orderRequestDto );
	public boolean setOrder2(OrderRequestDto orderRequestDto );
	public boolean selectDel(int product_code);
	public boolean insertUserinfo(OrderInfoRequestDto orderInfoRequestDto);
}
