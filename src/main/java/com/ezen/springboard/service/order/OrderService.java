package com.ezen.springboard.service.order;



import java.util.List;

import com.ezen.springboard.VO.OrderVO;

public interface OrderService {
		
	List<OrderVO> orderList(String option);
	OrderVO	orderListDetail(int orderNo);
	
	
}
