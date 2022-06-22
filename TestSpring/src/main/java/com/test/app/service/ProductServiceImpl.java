package com.test.app.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.test.app.config.FileConfig;
import com.test.app.domain.user.Product;
import com.test.app.domain.user.ProductRepository;
import com.test.app.web.dto.ProductRequestDto;
import com.test.app.web.dto.ProductResponseDto;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private ServletContext sc;

	@Override
	public boolean productInsert(ProductRequestDto productRequestDto) {
		List<MultipartFile> fileList = productRequestDto.getFile();
	
		List<String> tempImageFileNames = new ArrayList<String>(6);
		
		if(!fileList.get(0).getOriginalFilename().equals("")) {
			for(int i = 0; i < fileList.size(); i++){
				String imageFileName = fileList.get(i).getOriginalFilename();
				tempImageFileNames.add(UUID.randomUUID().toString().replaceAll("-", "_") + imageFileName);
				String path = sc.getRealPath("/static/upload_img");
				Path imageFilePath = Paths.get(path + "/" + tempImageFileNames.get(i));

				File file = new File(path);
				if(!file.exists()) { //해당 경로가 존재하지 않으면 경로를 만들어라
					file.mkdirs();
				}
				try {
					Files.write(imageFilePath, fileList.get(i).getBytes());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		Product product = Product.builder()
				.product_username(productRequestDto.getProduct_username())
				.product_title(productRequestDto.getProduct_title())
				.product_content(productRequestDto.getProduct_content())
				.product_img1(!fileList.get(0).getOriginalFilename().equals("") && fileList.size() > 0 ? tempImageFileNames.get(0) : null)
				.product_img2(fileList.size() > 1 ? tempImageFileNames.get(1) : null)
				.product_img3(fileList.size() > 2 ? tempImageFileNames.get(2) : null)
				.product_img4(fileList.size() > 3 ? tempImageFileNames.get(3) : null)
				.product_img5(fileList.size() > 4 ? tempImageFileNames.get(4) : null)
				.product_img6(fileList.size() > 5 ? tempImageFileNames.get(5) : null)
				.product_price(productRequestDto.getProduct_price())
				.create_date(productRequestDto.getCreate_date())
				.product_phone(productRequestDto.getProduct_phone())
				.product_delivery(productRequestDto.getProduct_delivery())
				.product_status(productRequestDto.getProduct_status())
				.product_exchange(productRequestDto.getProduct_exchange())
				.product_select(productRequestDto.getProduct_select())
				.build();
		
		return productRepository.productInsert(product) != 0;
	}

	@Override
	public ProductResponseDto homeList(int number) {
		String address = sc.getRealPath("/static/upload_img");
		System.out.println(address);
		
		List<Product> products = productRepository.homeList(number);
		
		if(products == null) {
			return null;
		}else {
			
			return ProductResponseDto.builder()
					.products(products)
					.product_address(address)
					.build();
		}
		
	}

	@Override
	public Product getProductList(int product_code) {
		Product product = productRepository.getProductList(product_code);
		if(product == null) {
			return null;
		}else {
			return product;
		}
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
