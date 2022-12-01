package com.ezen.springboard.service.cart.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.CartVO;
import com.ezen.springboard.VO.ProdVO;

@Repository
public class CartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ProdVO getProd(int prodNo) {
		return mybatis.selectOne("CartDAO.getProd",prodNo);
	}
	
	public List<CartVO> getCartList(int userNo) {
		return mybatis.selectList("CartDAO.getCartList", userNo);
	}
	
	public void insertCart(CartVO cartVO) {
		
		mybatis.selectOne("CartDAO.insertCart", cartVO);
	}
}
