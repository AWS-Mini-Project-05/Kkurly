package com.ezen.springboard.service.order.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.OrderVO;

@Repository
public class OrderDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<OrderVO> orderList(String option) {		
		return mybatis.selectList("OrderDAO.orderList", option);
	}
	public OrderVO orderListDetail(int orderNo) {
		return mybatis.selectOne("OrderDAO.orderListDetail",orderNo);
	}

}
