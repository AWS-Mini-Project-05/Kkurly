package com.ezen.springboard.service.order.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.OrderVO;
import com.ezen.springboard.service.order.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;

	@Override
	public List<OrderVO> orderList(String option) {
		
		return orderDAO.orderList(option);
	}

	@Override
	public OrderVO orderListDetail(int orderNo) {

		return orderDAO.orderListDetail(orderNo);
	}

	

	
}
