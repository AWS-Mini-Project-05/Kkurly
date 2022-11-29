package com.ezen.springboard.service.product.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.ProdFileVO;
import com.ezen.springboard.VO.ProdVO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public int prodNameCheck(String prodNm) {
		return mybatis.selectOne("ProductDAO.prodNameCheck", prodNm);
	}
	public List<ProdVO> searchProduct(){
		return mybatis.selectList("ProductDAO.searchProduct");
	}
	public void prodInsert(ProdVO prodVO, ProdFileVO prodFile) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		
		paramMap.put("prodVO", prodVO);
		
		if(prodFile.getProdOriginFileNm() != null &&
			!prodFile.getProdOriginFileNm().equals("")) {
			paramMap.put("prodFile", prodFile);
		}
		
		mybatis.insert("ProductDAO.prodInsert", paramMap);
	}

	
}
