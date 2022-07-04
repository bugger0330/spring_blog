package com.test.app.service;

import com.test.app.domain.user.Product;
import com.test.app.web.dto.ProductRequestDto;
import com.test.app.web.dto.ProductResponseDto;

public interface ProductService {

	public boolean productInsert(ProductRequestDto productRequestDto);
	public Product getProductList(int product_code);
	
	public ProductResponseDto homeList1(int number);
	public ProductResponseDto homeList2(int number);
	public ProductResponseDto homeList3(int number);
	public ProductResponseDto homeList4(int number);
}
