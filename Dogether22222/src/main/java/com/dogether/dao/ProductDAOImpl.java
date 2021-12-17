package com.dogether.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dogether.domain.MemberVO;
import com.dogether.domain.ProductsVO;
import com.dogether.domain.Shopping_cartVO;
@Repository("productsDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<ProductsVO> getProductsList() {
		System.out.println("getProductsList실행==========");
		return mybatis.selectList("ProductsDAO.getProductsList");
	}

	@Override
	public ProductsVO detailProduct(ProductsVO vo) {
		System.out.println("detailProduct실행===========");
		return (ProductsVO)mybatis.selectOne("ProductsDAO.detailProduct",vo);
	}

	@Override
	public int insertIntoCart(Shopping_cartVO vo) {
		System.out.println("insertIntoCart실행===========");
		return mybatis.insert("ProductsDAO.insertIntoCart", vo);
	}

	@Override
	public List<HashMap<String, String>> getShoppingCartList(MemberVO vo) {
		System.out.println("getShoppingCartList실행==========");
		return mybatis.selectList("ProductsDAO.getShoppingCartList",vo);
	}

	@Override
	public int deleteFromCart(Shopping_cartVO vo) {
		System.out.println("deleteFromCart실행==============");
		return mybatis.delete("ProductsDAO.deleteFromCart",vo);
	}

}
