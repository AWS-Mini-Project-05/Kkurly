package com.ezen.springboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.service.product.ProductService;

@Controller
@RequestMapping("/product") // 모든 주소 앞에 /user 붙음! (폴더구조라고 생각하면 편함)
public class ProductController {
	@Autowired
	private ProductService prodService;

	
	//post 방식은 해당 로직 처리
	@PostMapping("/prodNameCheck.do")
	@ResponseBody
	public boolean prodNameCheck(@RequestParam("prodNm") String prodNm) {
		boolean check = prodService.prodNameCheck(prodNm);
		
		if(check) {
			System.out.println("사용가능한 상품명 입니다.");
		}else System.out.println("사용불가능한 상품명 입니다.");
		
		return check;
	}
	//새 상품 등록
//	@PostMapping("/prodInsert.do")
//	public String prodInsert() {
//	prodService.prodInsert();
//		
//	return "admin/createProduct";
//	}
}
