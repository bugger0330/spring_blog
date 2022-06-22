package com.test.app.domain.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Order {
	private int product_code;
	private String product_img1;
	private String product_title;
	private String product_price;
	private String username;
}
