package com.test.app.web.dto;

import java.util.List;

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
	private List<MultipartFile> file;
	public Product entity() {
		return Product.builder()
				.product_username(username)
				.product_title(title)
				.product_content(content)
				/* .product_img(file.getOriginalFilename()) */
				.build();
	}
}
