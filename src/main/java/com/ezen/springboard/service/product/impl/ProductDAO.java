package com.ezen.springboard.service.product.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public int prodNameCheck(String prodNm) {
		return mybatis.selectOne("ProductDAO.prodNameCheck", prodNm);
	}
}
