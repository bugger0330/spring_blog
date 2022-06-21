package com.test.app.domain.user;

import java.time.LocalDateTime;

import com.test.app.web.dto.ProductResponseDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Product {
	
	private int product_code;
	private String product_username;
	private String product_title;
	private String product_content;
	private String product_price;
	private String product_img1;
	private String product_img2;
	private String product_img3;
	private String product_img4;
	private String product_img5;
	private String product_img6;
	private LocalDateTime create_date;
	
	
	
}
