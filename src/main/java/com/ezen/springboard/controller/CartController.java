package com.ezen.springboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.springboard.service.cart.CartService;

@Controller
@RequestMapping("/cart") // 모든 주소 앞에 /user 붙음! (폴더구조라고 생각하면 편함)
public class CartController {
	@Autowired
	private CartService cartService;

	@GetMapping("/cart.do")
	public String cartView() {
		
		return "/cart/cart";
	}

}
