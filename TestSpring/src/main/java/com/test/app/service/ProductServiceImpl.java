package com.test.app.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app.config.FileConfig;
import com.test.app.domain.user.Product;
import com.test.app.domain.user.ProductRepository;
import com.test.app.web.dto.ProductRequestDto;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public boolean productInsert(ProductRequestDto productRequestDto) {
		
		String originFileName = productRequestDto.getFile().getOriginalFilename();
		String tempImageFileName =UUID.randomUUID().toString().replaceAll("-", "_") + originFileName;
		String path = FileConfig.getProfileImgPath();
		Path imageFilePath = Paths.get(path + "/" + tempImageFileName);
		System.out.println("서비스 : " + imageFilePath);
		
		File file = new File(path);
		if(!file.exists()) { 
			file.mkdirs();
		}
		try {
			Files.write(imageFilePath, productRequestDto.getFile().getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int result = productRepository.productInsert(productRequestDto.entity(tempImageFileName));
//		int result = productRepository.productInsert(productRequestDto.entity().setProduct_img(tempImageFileName));
		return result != 0;
	}

	@Override
	public List<Product> productSelect() {
		List<Product> result = productRepository.productSelect();
		
		return result;
	}

}
