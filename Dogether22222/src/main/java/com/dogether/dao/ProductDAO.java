package com.dogether.dao;

import java.util.HashMap;
import java.util.List;

import com.dogether.domain.MemberVO;
import com.dogether.domain.ProductsVO;
import com.dogether.domain.Shopping_cartVO;



public interface ProductDAO {
	
	//토탈상품전체로 불러오기
	public List<ProductsVO> getProductsList();
	//상품 상세페이지
	public ProductsVO detailProduct(ProductsVO vo);
	//장바구니 추가
	public int insertIntoCart(Shopping_cartVO vo);
	//장바구니 삭제
	public int deleteFromCart(Shopping_cartVO vo);
	//장바구니목록 가져오기
	public List<HashMap<String,String>> getShoppingCartList(MemberVO vo);
}
