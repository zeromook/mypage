package com.dogether.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dogether.dao.ProductDAO;
import com.dogether.domain.ProductsVO;

@Service("productsService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productsDAO;
	
	@Override
	public List<ProductsVO> getProductsList() {
		return productsDAO.getProductsList();
	}



}
