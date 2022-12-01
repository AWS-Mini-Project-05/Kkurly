package com.ezen.springboard.service.user;

import java.util.List;
import java.util.Map;

import com.ezen.springboard.VO.UserVO;

public interface UserService {
	public boolean idCheck(String id);
	public UserVO getUser(int userNo);
	List<UserVO> manageUser(Map<String, String> paramMap);
	void updateUser(Map<String, Object> paramMap);
	void deleteUser(int no);
}
