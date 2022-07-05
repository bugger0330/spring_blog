package com.test.app.service;

import com.test.app.domain.user.Product;
import com.test.app.web.dto.ProductRequestDto;
import com.test.app.web.dto.ProductResponseDto;
import com.test.app.web.dto.ProductSearchDto;

public interface ProductService {

	public boolean productInsert(ProductRequestDto productRequestDto);
	public Product getProductList(int product_code);
	
	public ProductResponseDto homeList1(ProductSearchDto productSearchDto);
	public ProductResponseDto homeList2(ProductSearchDto productSearchDto);
	public ProductResponseDto homeList3(ProductSearchDto productSearchDto);
	public ProductResponseDto homeList4(ProductSearchDto productSearchDto);
}
