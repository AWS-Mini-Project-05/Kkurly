package com.ezen.springboard.service.product;

import java.util.List;

import com.ezen.springboard.VO.ProdVO;

public interface ProductService {
	boolean prodNameCheck(String prodNm);
	void prodInsert(ProdVO prodVO);
	List<ProdVO> searchProduct();
}
