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
		return "/cart/cartList";
	}
	
	@RequestMapping("/order.do")
	public String order() {
		return "/cart/order";
	}
	
}
