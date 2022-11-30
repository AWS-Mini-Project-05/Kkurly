package com.ezen.springboard.service.main.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.ProdVO;

@Repository
public class MainDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public List<ProdVO> getProdList(String cd){
//		System.out.println("MainDAO ING~"+cd);
		return mybatis.selectList("MainDAO.getProdList",cd);
	}
	
	public int getProdCnt(String cd) {
		return mybatis.selectOne("MainDAO.getProdCnt", cd);
	}
}
