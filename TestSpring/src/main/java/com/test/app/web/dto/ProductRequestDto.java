package com.test.app.web.dto;

import org.springframework.web.multipart.MultipartFile;

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
	private String content;
	private String select;
	private MultipartFile file;
	
	public Product entity(String uuid) {
		return Product.builder()
				.product_username(username)
				.product_title(title)
				.product_content(content)
				.product_img(uuid)
				.select(select)
				.build();
	}
}
