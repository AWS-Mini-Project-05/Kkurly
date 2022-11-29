package com.ezen.springboard.service.product.impl;

import java.util.List;

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
	public void prodInsert(ProdVO prodVO, List<ProdFileVO> fileList) {
		mybatis.insert("ProductDAO.prodInsert", prodVO);
		
	if(fileList.size() > 0) {
			//게시글 번호를 담아주는 작업
			for(ProdFileVO prodFile : fileList) {
			prodFile.setProdNo(prodVO.getProdNo());
		
			}

			mybatis.insert("ProductDAO.prodInsertFileList", fileList);
		}
	}
//	public void prodInsert(ProdVO prodVO) {
//		mybatis.insert("ProductDAO.prodInsert", prodVO);
//	}
	
}
