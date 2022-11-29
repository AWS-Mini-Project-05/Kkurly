package com.ezen.springboard.service.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public int idCheck(String id) {
		return mybatis.selectOne("UserDAO.idCheck", id);
	}
}
