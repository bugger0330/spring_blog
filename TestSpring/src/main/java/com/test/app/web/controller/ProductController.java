package com.test.app.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.test.app.service.ProductService;
import com.test.app.web.dto.ProductRequestDto;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@ResponseBody
	@RequestMapping(value = "/product/insert", method = RequestMethod.POST)
	public String productInsert(ProductRequestDto productRequestDto) {
		System.out.println("컨트롤러 실행");
		System.out.println("dto : " + productRequestDto.toString());
		System.out.println("이미지file : " + productRequestDto.getFile().get(0).getOriginalFilename());
//		boolean result = productService.productInsert(productRequestDto);
		return null;
	}





}