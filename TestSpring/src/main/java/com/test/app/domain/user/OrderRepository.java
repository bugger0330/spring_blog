package com.test.app.domain.user;

import java.util.List;

public interface OrderRepository {

	public List<Order> getOrderList(String username);
	public int setOrder(Order order);
	public List<Order> productCheck(Order order);
	public int selectDel(int product_code);
	public int insertUserinfo(OrderInfo orderInfo);
	
	public List<OrderInfo> getMypageUserInfo(String username);
}
