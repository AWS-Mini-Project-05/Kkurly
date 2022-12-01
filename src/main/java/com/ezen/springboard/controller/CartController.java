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

import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.VO.UserVO;
import com.ezen.springboard.service.cart.CartService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	private CartService cartService;

	
	@RequestMapping("/cartList.do")
	public String cartList(@RequestParam("tmp") String tmpData, HttpSession session, Model model) throws JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
		
		List<Map<String, Object>> listMap = mapper.readValue(tmpData, new TypeReference<List<Map<String, Object>>>(){});
		

		List<ProdVO> coldList = new ArrayList<ProdVO>();
		List<ProdVO> frozenList = new ArrayList<ProdVO>();
		List<ProdVO> normalList = new ArrayList<ProdVO>();

		
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
				//.out.print("prodNo : " + tmp.get("prodNo") + ", ");
				//System.out.println("prodQty : " + tmp.get("prodQty"));
				
				int prodNo = Integer.parseInt(String.valueOf(tmp.get("prodNo")));
				int prodQty = Integer.parseInt(String.valueOf(tmp.get("prodQty")));
				
				ProdVO prod = cartService.getProd(prodNo);
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
			
			// 로그인 확인 
			//UserVO getUserId = session.getAttribute("loginUser");
			System.out.println(session.getAttribute("loginUser"));
			

			totalPrice = prodPrice;
			
			model.addAttribute("coldList", coldList);
			model.addAttribute("frozenList", frozenList);
			model.addAttribute("normalList", normalList);
			
			model.addAttribute("coldQtyList", coldQtyList);
			model.addAttribute("frozenQtyList", frozenQtyList);
			model.addAttribute("normalQtyList", normalQtyList);
			
			model.addAttribute("prodPrice", prodPrice);
			model.addAttribute("totalPrice", totalPrice);
			
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