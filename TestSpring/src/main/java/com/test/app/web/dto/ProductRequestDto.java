package com.test.app.web.dto;

import com.test.app.domain.user.Product;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ProductRequestDto {

	
	private String username;
	private String title;
	private String img;
	private String content;
	private String select;
	
	public Product entity() {
		return Product.builder()
				.product_username(username)
				.product_title(title)
				.product_img(img)
				.product_content(content)
				.select(select)
				.build();
	}
}
