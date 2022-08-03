package com.test.app.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.Product;
import com.test.app.service.ProductService;
import com.test.app.web.dto.ProductRequestDto;
import com.test.app.web.dto.ProductResponseDto;
import com.test.app.web.dto.SearchRequestDto;

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
		System.out.println("상품등록 서비스 갔다옴 : " + result);
		return Boolean.toString(result);
	}

	@ResponseBody
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ProductResponseDto homeList(int number){
		
		System.out.println("컨트롤러 들어옴 number : " + number);
		if(number == 1) {
			number = 0;
		}else if(number > 1) {
			number = (number - 1) * 16;
		}
		System.out.println("컨트롤러 계산된 number : " + number);
		
		
		ProductResponseDto dto1 = productService.homeList1(number);
		ProductResponseDto dto2 = productService.homeList2(number);
		ProductResponseDto dto3 = productService.homeList3(number);
		ProductResponseDto dto4 = productService.homeList4(number);
		
		ProductResponseDto dto = new ProductResponseDto();
		dto.setProducts1(dto1.getProducts1());
		dto.setProducts2(dto2.getProducts2());
		dto.setProducts3(dto3.getProducts3());
		dto.setProducts4(dto4.getProducts4());
		
		System.out.println("컨트롤러 통과 : " + dto1);
		System.out.println("컨트롤러 통과 : " + dto2);
		System.out.println("컨트롤러 통과 : " + dto3);
		System.out.println("컨트롤러 통과 : " + dto4);
		System.out.println("컨트롤러 통과44444 : " + dto.toString());
//		System.out.println("리얼패스 : " + dto1.getProduct_address());
		
		
		
		
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
	
	
	
	@ResponseBody
	@RequestMapping(value = "/home/search", method = RequestMethod.GET)
	public ProductResponseDto homeList2(SearchRequestDto searchRequestDto){
		
		System.out.println("search컨트롤러 들어옴 : " + searchRequestDto.toString());
		if(searchRequestDto.getNumber() == 1) {
			searchRequestDto.setNumber(0);
		}else if(searchRequestDto.getNumber() > 1) {
			searchRequestDto.setNumber((searchRequestDto.getNumber() - 1) * 16);
		}
		System.out.println("search컨트롤러 계산된 number : " + searchRequestDto.toString());
		
		
		
		  ProductResponseDto dto1 = productService.homeList5(searchRequestDto);
		  ProductResponseDto dto2 = productService.homeList6(searchRequestDto);
		  ProductResponseDto dto3 = productService.homeList7(searchRequestDto);
		  ProductResponseDto dto4 = productService.homeList8(searchRequestDto);
		  
		  ProductResponseDto dto = new ProductResponseDto();
		  dto.setProducts1(dto1.getProducts5()); dto.setProducts2(dto2.getProducts6());
			dto.setProducts3(dto3.getProducts7()); dto.setProducts4(dto4.getProducts8()); 
		  
		  System.out.println("컨트롤러 통과 : " + dto1); System.out.println("컨트롤러 통과 : " +
		  dto2); System.out.println("컨트롤러 통과 : " + dto3);
			 System.out.println("컨트롤러 통과 : " + dto4);  System.out.println("컨트롤러 통과44444 : "
		  + dto.toString());
		  
		  return dto;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/product/get/{product_code}", method = RequestMethod.GET)
	public Product getProductList(@PathVariable int product_code) {
		System.out.println("컨트롤러 들어옴 : " + product_code);
		Product product = productService.getProductList(product_code);
		
		System.out.println("이미지1 : "+product.getProduct_img1());
		return product;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


}