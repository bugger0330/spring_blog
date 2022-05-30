package com.test.app.domain.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Product {

	private String product_username;
	private String product_title;
	private String product_img;
	private String product_content;
	private String select;
	
//	public void setProduct_username(String product_username) {
//		this.product_username = product_username;
//	}
//	public void setProduct_title(String product_title) {
//		this.product_title = product_title;
//	}
//	public Product setProduct_img(String product_img) {
//		this.product_img = product_img;
//		return this;
//	}
//	public void setProduct_content(String product_content) {
//		this.product_content = product_content;
//	}
//	public void setSelect(String select) {
//		this.select = select;
//	}
	
}
