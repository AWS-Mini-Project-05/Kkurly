package com.ezen.springboard.service.product;

import java.util.List;

import com.ezen.springboard.VO.ProdFileVO;
import com.ezen.springboard.VO.ProdVO;

public interface ProductService {
	boolean prodNameCheck(String prodNm);
	List<ProdVO> searchProduct();
	void prodInsert(ProdVO prodVO, List<ProdFileVO> fileList);
//	void prodInsert(ProdVO prodVO);
}
