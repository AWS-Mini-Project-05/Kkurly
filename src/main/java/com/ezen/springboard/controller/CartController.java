package com.ezen.springboard.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.springboard.VO.UserVO;
import com.ezen.springboard.service.user.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/cart")
public class CartController {
//	@Autowired
//	private CartService cartService;

	@RequestMapping("/cartList.do")
	public String cartList() {
		
		// 로그인인지 비로그인인지 확인해서 따로 데이터를 전달 
		// 비로그인 : localstorage에서 가져옴 -> 그냥 localstorage 에서 가지고 온다.
		//   로그인 : db에서 가지고 옴        -> 회원 번호를 가지고 장바구니 테이블에서 가지고 온다.
		// Model로? session으로?
		
		// input : prodNo
		// 비로그인 : 로컬 저장소(localstorage)    -> 상품 번호 -> 상품 테이블 -> model
		//   로그인 : 회원 번호 -> 장바구니 테이블 -> 상품 번호 -> 상품 테이블 -> model
		
		// output : 상품 정보 리스트 
		
		return "/cart/cartList";
	}
	
	@RequestMapping("/order.do")
	public String order() {
		return "/cart/order";
	}

}
