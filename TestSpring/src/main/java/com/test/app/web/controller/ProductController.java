package com.test.app.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.app.domain.user.Product;
import com.test.app.service.ProductService;
import com.test.app.web.dto.ProductRequestDto;
import com.test.app.web.dto.ProductResponseDto;
import com.test.app.web.dto.ProductSearchDto;

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
	public ProductResponseDto homeList(@RequestBody ProductSearchDto productSearchDto){

		
		System.out.println("컨트롤러 들어옴 number : " + productSearchDto.getNumber());
		if(productSearchDto.getNumber() == 1) {
			productSearchDto.setNumber(0);
		}else if(productSearchDto.getNumber() > 1) {
			productSearchDto.setNumber((productSearchDto.getNumber() - 1) * 16);
		}
		System.out.println("컨트롤러 계산된 number : " + productSearchDto.getNumber());
		
		
		ProductResponseDto dto1 = productService.homeList1(productSearchDto);
		ProductResponseDto dto2 = productService.homeList2(productSearchDto);
		ProductResponseDto dto3 = productService.homeList3(productSearchDto);
		ProductResponseDto dto4 = productService.homeList4(productSearchDto);
		
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
	@RequestMapping(value = "/product/get/{product_code}", method = RequestMethod.GET)
	public Product getProductList(@PathVariable int product_code) {
		System.out.println("컨트롤러 들어옴 : " + product_code);
		Product product = productService.getProductList(product_code);
		
		System.out.println("이미지1 : "+product.getProduct_img1());
		return product;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


}