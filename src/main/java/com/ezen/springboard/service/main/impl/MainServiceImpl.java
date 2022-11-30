package com.ezen.springboard.service.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.service.main.MainService;

@Service
public class MainServiceImpl implements MainService{

	@Autowired
	MainDAO mainDAO;

	@Override
	public List<ProdVO> getProdList(String cd) {
		return mainDAO.getProdList(cd);
	}

	@Override
	public int getProdCnt(String cd) {
		return mainDAO.getProdCnt(cd);
	}

}