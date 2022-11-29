package com.ezen.springboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.service.main.MainService;

@Controller
public class MainController {

	@Autowired
	MainService mainService;



	@RequestMapping("/categori.do")
	public String getProdList(@RequestParam("CD") String cd) {

		System.out.println("=============== 선택한 카테고리 : "+ cd);

		List<ProdVO> list = mainService.getProdList("1120");

		for (ProdVO element : list) {
			System.out.println(element);
		}

		return "redirect:/#";
	}
}
