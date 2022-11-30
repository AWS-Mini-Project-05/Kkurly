package com.ezen.springboard.service.cart.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.CartVO;

@Repository
public class CartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public CartVO getProd(int prodNo) {
		return mybatis.selectOne("CartDAO.getProd",prodNo);
	}
	
}
