package com.ezen.springboard.service.user;

import java.util.List;
import java.util.Map;

import com.ezen.springboard.VO.UserVO;

public interface UserService {
	public UserVO getUser(int userNo);
	List<UserVO> manageUser(Map<String, String> paramMap);
	
	//id중복체크
	int idCheck(String userId);
	//회원가입
	int join(UserVO userVO);
	//로그인
	UserVO login(UserVO userVO);

}
