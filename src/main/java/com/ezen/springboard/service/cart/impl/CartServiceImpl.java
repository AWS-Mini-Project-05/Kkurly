package com.ezen.springboard.service.cart.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.CartVO;
import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.service.cart.CartService;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartDAO cartDAO;
	
	@Override
	public ProdVO getProd(int prodNo) {
		return cartDAO.getProd(prodNo);
	}
	
	@Override
	public List<CartVO> getCartList(int userNo) {
		return cartDAO.getCartList(userNo);
	}
	
	@Override
	public void insertCart(CartVO cartVO) {
		cartDAO.insertCart(cartVO);
	}
}
