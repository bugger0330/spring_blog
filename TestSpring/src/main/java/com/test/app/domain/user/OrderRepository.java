package com.test.app.domain.user;

import java.util.List;

public interface OrderRepository {

	public List<Order> getOrderList(String username);
	public int setOrder(Order order);
}
