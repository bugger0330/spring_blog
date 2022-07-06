package com.test.app.domain.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class OrderInfo {

	private int order_code;
	private String product_code;
	private String delivery_code;
	private String username;
	private String name;
	private String phone;
	private String phone2;
	private String address_num;
	private String address;
	private String address2;
	private String requests;
	private String all_price;
	private String product_img1;
	private String product_title;
	private String product_price;
	private String youname;
	private String create_date;
}
