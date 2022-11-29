package com.ezen.springboard.service.user.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.springboard.VO.UserVO;

@Repository
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public int idCheck(String id) {
		return mybatis.selectOne("UserDAO.idCheck", id);
	}

	public List<UserVO> manageUser(Map<String, String> paramMap) {
		return mybatis.selectList("UserDAO.manageUser", paramMap);
	}
	public UserVO getUser(int userNo) {
		return mybatis.selectOne("UserDAO.getUser",userNo);
	}

}
