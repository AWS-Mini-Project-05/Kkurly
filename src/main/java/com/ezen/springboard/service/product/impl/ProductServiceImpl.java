package com.ezen.springboard.service.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.service.product.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;

	@Override
	public boolean prodNameCheck(String prodNm) {
		int cnt = productDAO.prodNameCheck(prodNm);
		
		if(cnt > 0) {
			return false;
		} else return true;
	}

	@Override
	public void prodInsert(ProdVO prodVO) {
		productDAO.prodInsert(prodVO);
	}

	@Override
	public List<ProdVO> searchProduct() {
		
		return productDAO.searchProduct();
	}


}
