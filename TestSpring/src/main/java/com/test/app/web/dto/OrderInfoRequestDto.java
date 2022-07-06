package com.test.app.web.dto;

import com.test.app.domain.user.OrderInfo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class OrderInfoRequestDto {

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
	
	public OrderInfo entity() {
		return OrderInfo.builder()
				.product_code(product_code)
				.delivery_code(delivery_code)
				.username(username)
				.name(name)
				.phone(phone)
				.phone2(phone2)
				.address_num(address_num)
				.address(address)
				.address2(address2)
				.requests(requests)
				.all_price(all_price)
				.product_img1(product_img1)
				.product_title(product_title)
				.product_price(product_price)
				.youname(youname)
				.build();
	}
	
	
	
	
	
	
	
	
	
}
