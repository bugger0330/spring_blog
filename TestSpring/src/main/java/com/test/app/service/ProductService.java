package com.test.app.service;

import com.test.app.domain.user.Product;
import com.test.app.web.dto.ProductRequestDto;
import com.test.app.web.dto.ProductResponseDto;

public interface ProductService {

	public boolean productInsert(ProductRequestDto productRequestDto);
	public ProductResponseDto homeList(int number);
	public Product getProductList(int product_code);
}
