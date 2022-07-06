package com.test.app.service;

import java.util.List;

import com.test.app.domain.user.Order;
import com.test.app.domain.user.OrderInfo;
import com.test.app.web.dto.OrderInfoRequestDto;
import com.test.app.web.dto.OrderRequestDto;

public interface OrderService {

	public List<Order> getOrderList(String username);
	public boolean setOrder(OrderRequestDto orderRequestDto );
	public boolean setOrder2(OrderRequestDto orderRequestDto );
	public boolean selectDel(int product_code);
	public boolean insertUserinfo(OrderInfoRequestDto orderInfoRequestDto);
	
	public List<Order> getMypageOrderList(String username);
	public List<OrderInfo> getMypageUserInfo(String username);
}
