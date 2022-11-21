package com.ezen.springboard.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.springboard.VO.UserVO;
import com.ezen.springboard.service.user.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/user") // 모든 주소 앞에 /user 붙음! (폴더구조라고 생각하면 편함)
public class UserController {
	@Autowired
	private UserService userService;

	@GetMapping("/join.do")
	public String joinView() {
		return "user/join";
	}
	
	//post 방식은 해당 로직 처리
	@PostMapping("/join.do")
	public void join(UserVO userVO) {
		
	}
	
	@PostMapping(value="/test.do",
	produces="application/text; charset=UTF8")
	@ResponseBody
//	@ResponseBody : 기존에는 return되는 jsp를 찾아서 response body를 HTML(화면 자체를 만들어서)로 만들어서 리턴
//					@ResponseBody가 선언된 메소드를 리턴 값 자체가 response body가 됨.(Html로 구조를 만들지 않음)
//					문자열을 리턴하면 요청을 호출한 곳에 문자열을 보내준다.
	public String test(@RequestParam("id") String id) throws JsonProcessingException {
		System.out.println(id);
		
		// json형태의 문자열을 만들어서 리턴한다.
		// 요청에 대한 응답으로 갈 데이터를 json 형태로 변경 => json 문자열로 변경
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		
		jsonMap.put("test", 123);
		jsonMap.put("firstName", "길동");
		jsonMap.put("lastName", "홍");
		
		UserVO user = new UserVO();
		user.setUserId("aaa");
		user.setUserPw("1234");
		user.setUserNm("bbb");
		
		jsonMap.put("user", user);
		
		// 리턴해줄 문자열
		// writerWithDefaultPrettyPrinter() : Map을 예쁜 형태의 json 모양으로 변경해줌
		// writervalueAsString() : json 모양으로 변경된 객체를 문자열로 변경
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(jsonMap); 
		
		return json;
				
	}
	
	@PostMapping("/idCheck.do")
	@ResponseBody
	public boolean idCheck(@RequestParam("id") String id) {
		boolean check = userService.idCheck(id);
		
		if(check) {
			System.out.println("사용가능한 아이디 입니다.");
		}else System.out.println("사용불가능한 아이디 입니다.");
		
		return check;
	}
}
