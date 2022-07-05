package com.test.app.web.dto;

import java.util.List;

import com.test.app.domain.user.Product;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class ProductResponseDto {

	private List<Product> products1;
	private List<Product> products2;
	private List<Product> products3;
	private List<Product> products4;
	private List<Product> products5;
	private List<Product> products6;
	private List<Product> products7;
	private List<Product> products8;
	private String product_address;
	
	
}
