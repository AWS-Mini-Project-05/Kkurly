package com.ezen.springboard.service.user.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.springboard.VO.UserVO;
import com.ezen.springboard.service.user.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	@Override
	public boolean idCheck(String id) {
		int cnt = userDAO.idCheck(id);
		
		if(cnt > 0) {
			return false;
		} else return true;
	}
	@Override
	public List<UserVO> manageUser(Map<String, String> paramMap) {
		return userDAO.manageUser(paramMap);
	}
	

	@Override
	public UserVO getUser(int userNo) {
		
		return userDAO.getUser(userNo);
	}

}
