package com.test.app.domain.user;

import java.util.List;

import com.test.app.web.dto.SearchRequestDto;

public interface ProductRepository {
	public int productInsert(Product product);

	/* public List<Product> homeList(int number); */
	public Product getProductList(int product_code);
	
	public List<Product> homeList1(int number);
	public List<Product> homeList2(int number);
	public List<Product> homeList3(int number);
	public List<Product> homeList4(int number);
	
	public List<Product> homeList5(Search search);
	public List<Product> homeList6(Search search);
	public List<Product> homeList7(Search search);
	public List<Product> homeList8(Search search);
}
