package com.ezen.springboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.service.main.MainService;

@Controller
public class HomeController {
	@Autowired
	MainService mainService;
	
	@RequestMapping("/")
	public String home(Model model) {
		
		List<ProdVO> list = mainService.getRandomProdList();
		model.addAttribute("prodList",list);
		
		return "/index";
	}
}
