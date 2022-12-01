package com.ezen.springboard.service.cart.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.CartVO;
import com.ezen.springboard.service.cart.CartService;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartDAO CartDAO;
	
	@Override
	public CartVO getProd(int prodNo) {
		return CartDAO.getProd(prodNo);
	}
}
