package com.test.app.domain.user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderRepositoryImpl implements OrderRepository {

	@Autowired
	private SqlSession session;
	
	private final String path = "com.test.app.domain.user.OrderRepository.";

	@Override
	public List<Order> getOrderList(String username) {
		
		return session.selectList(path + "getOrderList", username);
	}

	@Override
	public int setOrder(Order order) {
		
		return session.insert(path + "setOrder", order);
	}

	@Override
	public List<Order> productCheck(Order order) {
		
		return session.selectOne(path + "productCheck", order);
	}
}
