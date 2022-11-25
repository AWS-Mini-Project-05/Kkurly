package com.ezen.springboard.service.product.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.ProdVO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public int prodNameCheck(String prodNm) {
		return mybatis.selectOne("ProductDAO.prodNameCheck", prodNm);
	}
	public void prodInsert(ProdVO prodVO) {
		mybatis.insert("ProductDAO.prodInsert", prodVO);
	}
	public List<ProdVO> searchProduct(){
		return mybatis.selectList("ProductDAO.searchProduct");
	}
}
