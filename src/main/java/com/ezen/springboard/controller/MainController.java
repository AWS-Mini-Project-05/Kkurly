package com.ezen.springboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.service.main.MainService;

@Controller
@RequestMapping("/main")
public class MainController {

	@Autowired
	MainService mainService;



	@RequestMapping("/categori.do")
	public String getProdList(@RequestParam("CD") String cd, Model model) {

		System.out.println("=============== 선택한 카테고리 : "+ cd +"===============");

		List<ProdVO> prodList = mainService.getProdList(cd);
		int cnt = mainService.getProdCnt(cd);
		String cgNm = mainService.getCgNm(cd);

		for (ProdVO element : prodList) {
			System.out.println(element);
		}
		
		model.addAttribute("prodList",prodList);
		model.addAttribute("cnt", cnt);
		model.addAttribute("cgNm",cgNm);

		return "main/categoriesMain";
	}
	
	@RequestMapping("/getProdMain.do")
	public String getProdMain(@RequestParam("prodNo") int prodNo, Model model) {
		ProdVO prod = mainService.getProd(prodNo);
		
		String cgCd = prod.getProdCgcd();
		String temp = cgCd.substring(0,3);
		
		System.out.println(temp);
		
		if(temp.equals("T01")) {
			temp = "상온";
		} else if (temp.equals("T02")){
			temp = "냉장";
		} else {
			temp = "냉동";
		}
		
		model.addAttribute("prod", prod);
		model.addAttribute("temp",temp);
		
		
		return "main/getProdMain";
	}
}
