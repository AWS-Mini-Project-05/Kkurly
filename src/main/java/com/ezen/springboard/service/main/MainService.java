package com.ezen.springboard.service.main;

import java.util.List;

import com.ezen.springboard.VO.ProdVO;

public interface MainService {


	List<ProdVO> getProdList(String cd);
	
	int getProdCnt(String cd);
	
	String getCgNm (String cd);
	
	ProdVO getProd(int prodNo);

}
