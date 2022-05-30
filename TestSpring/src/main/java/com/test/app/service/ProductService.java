package com.test.app.service;

import java.util.List;

import com.test.app.domain.user.Product;
import com.test.app.web.dto.ProductRequestDto;

public interface ProductService {

	public boolean productInsert(ProductRequestDto productRequestDto);
	public List<Product> productSelect();
}
