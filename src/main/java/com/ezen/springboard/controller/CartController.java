package com.ezen.springboard.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.springboard.VO.CartVO;
import com.ezen.springboard.service.cart.CartService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/cart")
public class CartController {
//	@Autowired
//	private CartService cartService;
	
	@Autowired
	CartService cartService;

	
	@RequestMapping("/cartList.do")
	public String cartList(@RequestParam("tmp") String tmpData, HttpSession session, Model model) throws JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
		
		List<Map<String, Object>> listMap = mapper.readValue(tmpData, new TypeReference<List<Map<String, Object>>>(){});
		
		List<CartVO> coldList = new ArrayList<CartVO>();
		List<CartVO> frozenList = new ArrayList<CartVO>();
		List<CartVO> normalList = new ArrayList<CartVO>();
		
		List<Integer> coldQtyList = new ArrayList<Integer>();
		List<Integer> frozenQtyList = new ArrayList<Integer>();
		List<Integer> normalQtyList = new ArrayList<Integer>();
		
		
		String cgCd = "";
		String temp = "";
		int prodPrice = 0;
		int totalPrice = 0;
		
		try {
			for (Map<String, Object> tmp : listMap) {
				/*
				tmp.prodNo  : 상품 번호  
				tmp.prodQty : 구매 수량  
				*/
				System.out.print("prodNo : " + tmp.get("prodNo") + ", ");
				System.out.println("prodQty : " + tmp.get("prodQty"));
				
				int prodNo = Integer.parseInt(String.valueOf(tmp.get("prodNo")));
				int prodQty = Integer.parseInt(String.valueOf(tmp.get("prodQty")));
				
				CartVO prod = cartService.getProd(prodNo);
				cgCd = prod.getProdCgcd();
				temp = cgCd.substring(0,3);
				
				prodPrice += prod.getProdPrice();
				if(temp.equals("T01")) {
					normalList.add(prod);
					normalQtyList.add(prodQty);
				} else if (temp.equals("T02")){
					coldList.add(prod);
					coldQtyList.add(prodQty);
				} else {
					frozenList.add(prod);
					frozenQtyList.add(prodQty);
				}	
			}
			//CartVO prod = cartService.getProd(prodNo);
			
			
			
	/*	// DB -> 장바구니 테스트 코드	
			for (int i = 10; i<= 17; i++) {
				CartVO prod = cartService.getProd(i);
				cgCd = prod.getProdCgcd();
				temp = cgCd.substring(0,3);
				prodPrice += prod.getProdPrice();
				if(temp.equals("T01")) {
					normalList.add(prod);
					normalQtyList.add(1);
				} else if (temp.equals("T02")){
					coldList.add(prod);
					coldQtyList.add(1);
				} else {
					frozenList.add(prod);
					frozenQtyList.add(1);
				}	
			}
	*/		
			totalPrice = prodPrice;
			
			model.addAttribute("coldList", coldList);
			model.addAttribute("frozenList", frozenList);
			model.addAttribute("normalList", normalList);
			
			model.addAttribute("coldQtyList", coldQtyList);
			model.addAttribute("frozenQtyList", frozenQtyList);
			model.addAttribute("normalQtyList", normalQtyList);
			
			model.addAttribute("prodPrice", prodPrice);
			model.addAttribute("totalPrice", totalPrice);
			
			/*  System.out.println(tmp.toString());
			{prodNo=https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1637922344768l0.jpeg, prodQty=1}
			{prodNo=https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1601002334585l0.jpg, prodQty=1}
			{prodNo=https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1569990684227l0.jpg, prodQty=1}
			{prodNo=https://img-cf.kurly.com/cdn-cgi/image/width=400,format=auto/shop/data/goods/1653037363118l0.jpeg, prodQty=1} 
			*/
			
			// 로그인인지 비로그인인지 확인해서 따로 데이터를 전달 
			// 비로그인 : localstorage에서 가져옴 -> 그냥 localstorage 에서 가지고 온다.
			//   로그인 : db에서 가지고 옴        -> 회원 번호를 가지고 장바구니 테이블에서 가지고 온다.
			// Model로? session으로?
			
			// input : prodNo
			// 비로그인 : 로컬 저장소(localstorage)    -> 상품 번호 -> 상품 테이블 -> model
			//   로그인 : 회원 번호 -> 장바구니 테이블 -> 상품 번호 -> 상품 테이블 -> model
			
			// output : 상품 정보 리스트 
			
		} catch (Exception e) {
			
		}
		
		return "/cart/cartList";
	}
	
	@RequestMapping("/order.do")
	public String order(HttpSession session) {
		
		System.out.println(session.getAttribute("loginUser"));
		
		return "/cart/order";
	}

	
}