package com.test.app.web.dto;

import java.time.LocalDateTime;
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

	private String product_username;
	private String product_phone;
	private String product_title;
	private String product_content;
	private String product_price;
	private String product_delivery;
	private String product_status;
	private String product_exchange;
	private List<MultipartFile> file;
	private LocalDateTime create_date;
	
	
	
}
