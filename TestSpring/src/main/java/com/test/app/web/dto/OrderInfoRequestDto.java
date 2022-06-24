package com.test.app.web.dto;

import com.test.app.domain.user.OrderInfo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class OrderInfoRequestDto {

	private int order_code;
	private String username;
	private String name;
	private String phone;
	private String phone2;
	private String address_num;
	private String address;
	private String address2;
	private String requests;
	private String all_price;
	
	public OrderInfo entity() {
		return OrderInfo.builder()
				.order_code(order_code)
				.username(username)
				.name(name)
				.phone(phone)
				.phone2(phone2)
				.address_num(address_num)
				.address(address)
				.address2(address2)
				.requests(requests)
				.all_price(all_price)
				.build();
	}
	
	
	
	
	
	
	
	
	
}
