package com.test.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.domain.user.ProductRepository;
import com.test.app.web.dto.ProductRequestDto;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public boolean productInsert(ProductRequestDto productRequestDto) {
		int result = productRepository.productInsert(productRequestDto.entity());
		return result != 0;
	}

}
