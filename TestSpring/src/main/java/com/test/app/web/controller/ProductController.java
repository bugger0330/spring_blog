package com.test.app.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.Product;
import com.test.app.service.ProductService;
import com.test.app.web.dto.ProductRequestDto;
import com.test.app.web.dto.ProductResponseDto;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	
	@ResponseBody
	@RequestMapping(value = "/product/insert", method = RequestMethod.POST)
	public String productInsert(ProductRequestDto productRequestDto) {
		System.out.println("-=>>>>>>>>>>>>>" + productRequestDto);
		System.out.println(productRequestDto.getFile().get(0).getOriginalFilename());
		boolean result = productService.productInsert(productRequestDto);
		return Boolean.toString(result);
	}

	@ResponseBody
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ProductResponseDto homeList(int number){
		ProductResponseDto dto = productService.homeList(number);
		System.out.println("컨트롤러 통과 : " + dto);
		
		
		return dto;
	}



}