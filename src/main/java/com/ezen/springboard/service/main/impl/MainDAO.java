package com.ezen.springboard.service.main.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.ProdVO;

@Repository
public class MainDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public List<ProdVO> getProdCdList(String cd){
		return mybatis.selectList("MainDAO.getProdCdList",cd);
	}
	
	public List<ProdVO> getProdList(String prodNm){
		return mybatis.selectList("MainDAO.getProdList",prodNm);
	}
	
//	public int getProdCnt(String cd) {
//		return mybatis.selectOne("MainDAO.getProdCnt", cd);
//	}
	
	public String getCgNm(String cd) {
		return mybatis.selectOne("MainDAO.getCgNm",cd);
	}
	
	public ProdVO getProd(int prodNo) {
		return mybatis.selectOne("MainDAO.getProd",prodNo);
	}
	
	public void insertLike(int userNo, int prodNo) {
		Map<String,Integer> map = new HashMap();
		
		map.put("userNo", userNo);
		map.put("prodNo", prodNo);
		
		mybatis.insert("MainDAO.insertLike",map);
	}
}
