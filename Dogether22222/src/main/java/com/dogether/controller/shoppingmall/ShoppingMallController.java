package com.dogether.controller.shoppingmall;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dogether.domain.ProductsVO;
import com.dogether.service.ProductService;

@Controller
public class ShoppingMallController {

	@Autowired
	private ProductService productService;
	
	
	//모든상품 갖고 시작하자잉
	@RequestMapping("totalproduct.do")
	public void totalProduct(ProductsVO vo, Model model) {
		System.out.println("모든상품목록을 불러옵니다----------");
		List<ProductsVO> list = productService.getProductsList();
		model.addAttribute("productList",list);
	}
	
	
	@RequestMapping("detailProduct.do")
	public void detailProduct(ProductsVO vo,Model m) {
		//ProductsVO pv = productService.
	}
}
