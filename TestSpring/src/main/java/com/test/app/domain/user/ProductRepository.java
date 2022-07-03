package com.test.app.domain.user;

import java.util.List;

public interface ProductRepository {
	public int productInsert(Product product);
	public List<Product> homeList(int number);
	public Product getProductList(int product_code);
}
