package com.dogether.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dogether.domain.ProductsVO;
@Repository("productsDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<ProductsVO> getProductsList() {
		return mybatis.selectList("ProductsDAO.getProductsList");
	}

}
