package com.test.app.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		System.out.println("리얼패스 : " + dto.getProduct_address());
		
		/*
		 * 
		 * 원래 c:/ 절대경로 안의 이미지 파일을 불러올 수가 없다!
		 * 그래서 패키지 내부의 상대경로로 잡아야 한다
		 * 현재 WEB-INF 안의 servlet-context.xml 에 리소스 경로를 
		 * <resources mapping="/static/**" location="/static/" /> 라고 잡았기 떄문에
		 * 기준점이 /static 폴더가 된다
		 * 그러니 이미지파일 저장 경로를 static 폴더 내에 위치하게 해야 한다
		 * C:\junil\kangmin\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\TestSpring\static/upload_img
		 * 
		 * 
		 */
		
		
		return dto;
	}



}