package com.test.app.web.dto;

import com.test.app.domain.user.ProductSearch;

import lombok.Data;

@Data
public class ProductSearchDto {
	
	private int number;
	private String select;
	private String search; 
	
	public ProductSearch entity() {
		return ProductSearch.builder()
				.number(number)
				.select(select)
				.search(search)
				.build();
	}

}
