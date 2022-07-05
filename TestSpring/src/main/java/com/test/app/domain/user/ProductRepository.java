package com.test.app.domain.user;

import java.util.List;

import com.test.app.web.dto.ProductSearchDto;

public interface ProductRepository {
	public int productInsert(Product product);

	/* public List<Product> homeList(int number); */
	public Product getProductList(int product_code);
	
	public List<Product> homeList1(ProductSearch productSearch);
	public List<Product> homeList2(ProductSearch productSearch);
	public List<Product> homeList3(ProductSearch productSearch);
	public List<Product> homeList4(ProductSearch productSearch);
}
