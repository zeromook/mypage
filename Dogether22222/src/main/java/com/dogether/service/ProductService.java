package com.dogether.service;

import java.util.HashMap;
import java.util.List;

import com.dogether.domain.MemberVO;
import com.dogether.domain.ProductsVO;
import com.dogether.domain.Shopping_cartVO;

public interface ProductService {

	//모든 상품목록 가져오기
	List<ProductsVO> getProductsList();
	
	//상품상세페이지 넘길떄
	ProductsVO detailProduct(ProductsVO vo);
	//장바구니 추가
	int insertIntoCart(Shopping_cartVO vo);
	//장바구니 삭제
	int deleteFromCart(Shopping_cartVO vo);
	//장바구니 목록 가져오기
	List<HashMap<String, String>> getShoppingCartList(MemberVO vo);

}
