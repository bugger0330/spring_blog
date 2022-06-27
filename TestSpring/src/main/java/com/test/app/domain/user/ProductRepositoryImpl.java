package com.test.app.domain.user;

import java.util.List;

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

	@Override
	public List<Product> homeList(int number) {
		List<Product> products = session.selectList(path + "homeList", number);
		return products;
	}

	@Override
	public Product getProductList(int product_code) {
		
		return session.selectOne(path + "getProductList", product_code);
	}

	@Override
	public List<Product> getMyProductList(String username) {
		return session.selectList(path + "getMyProductList", username);
	}


	
}
