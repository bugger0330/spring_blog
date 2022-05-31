package com.test.app.domain.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductRepositoryImpl implements ProductRepository {
	
	@Autowired
	private SqlSession session;
	
	private final String path = "com.test.app.domain.user.ProductRepository.";

	@Override
	public int productInsert(Product product) {
		
		return session.insert(path + "productInsert", product);
	}

	
}
