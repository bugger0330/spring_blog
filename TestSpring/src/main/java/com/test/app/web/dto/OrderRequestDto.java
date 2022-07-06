package com.test.app.web.dto;

import com.test.app.domain.user.Order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class OrderRequestDto {

	private int product_code;
	private String product_img1;
	private String product_title;
	private String product_price;
	private String username;
	private String youname;
	
	public Order entity() {
		return Order.builder()
				.product_code(product_code)
				.product_img1(product_img1)
				.product_title(product_title)
				.product_price(product_price)
				.username(username)
				.youname(youname)
				.build();
	}
}
