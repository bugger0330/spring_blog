package com.test.app.domain.user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.app.web.dto.SearchRequestDto;

@Repository
public class ProductRepositoryImpl implements ProductRepository {
	
	@Autowired
	private SqlSession session;
	
	private final String path = "com.test.app.domain.user.ProductRepository.";

	@Override
	public int productInsert(Product product) {
		
		return session.insert(path + "productInsert", product);
	}

	/*
	 * @Override public List<Product> homeList(int number) { List<Product> products
	 * = session.selectList(path + "homeList", number); return products; }
	 */

	@Override
	public Product getProductList(int product_code) {
		
		return session.selectOne(path + "getProductList", product_code);
	}

	@Override
	public List<Product> homeList1(int number) {
		
		return session.selectOne(path + "homeList1", number);
	}

	@Override
	public List<Product> homeList2(int number) {

		return session.selectOne(path + "homeList2", number);
	}

	@Override
	public List<Product> homeList3(int number) {

		return session.selectOne(path + "homeList3", number);
	}

	@Override
	public List<Product> homeList4(int number) {

		return session.selectOne(path + "homeList4", number);
	}

	@Override
	public List<Product> homeList5(Search search) {

		return session.selectOne(path + "homeList5", search);
	}

	@Override
	public List<Product> homeList6(Search search) {

		return session.selectOne(path + "homeList6", search);
	}

	@Override
	public List<Product> homeList7(Search search) {

		return session.selectOne(path + "homeList7", search);
	}

	@Override
	public List<Product> homeList8(Search search) {

		return session.selectOne(path + "homeList8", search);
	}

	

	
}
