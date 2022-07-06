package com.test.app.domain.user;

import java.time.LocalDateTime;

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
	private String youname;
	private String create_date;
}
