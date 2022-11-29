package com.ezen.springboard.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/cart")
public class CartController {
//	@Autowired
//	private CartService cartService;
	
	@RequestMapping("/cartList.do")
	public String cartList(@RequestParam List<Map<String, Object>> tmpData, HttpSession session) throws JsonProcessingException{
		
		List<Map<String, Object>> listMap = new ArrayList<Map<String, Object>>();
		
		ObjectMapper mapper = new ObjectMapper();
	
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		for (Map<String, Object> tmp : tmpData) {
			System.out.println(tmp.toString());
		}
		
		//listMap.put("tmpData", tmpData);
		
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(dataMap);
//		
//		return json;
		
		
		
		System.out.println(json);
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
	
	@PostMapping("/tmpCartList.do")
	public void tmpCartList(@RequestParam("tmp") String tmpData, HttpSession session) throws JsonProcessingException {
		
		//List<Student> participantJsonList = mapper.readValue(jsonString, new TypeReference<List<Student>>(){});
		
		//List<Map<String, Object>> listMap = new ArrayList<Map<String, Object>>();
		
		ObjectMapper mapper = new ObjectMapper();
		
	
		List<Map<String, Object>> listMap = mapper.readValue(tmpData, new TypeReference<List<Map<String, Object>>>(){});
		
		for (Map<String, Object> tmp : listMap) {
			System.out.println(tmp.toString());
		}
		
	
		
		
		//

		
		
		
		//System.out.println(json);


	}
	
}
