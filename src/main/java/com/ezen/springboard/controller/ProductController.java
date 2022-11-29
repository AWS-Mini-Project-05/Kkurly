package com.ezen.springboard.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ezen.springboard.VO.ProdFileVO;
import com.ezen.springboard.VO.ProdVO;
import com.ezen.springboard.service.product.ProductService;

import common.FileUtils;

@Controller
@RequestMapping("/product") // 모든 주소 앞에 /user 붙음! (폴더구조라고 생각하면 편함)
public class ProductController {
	@Autowired
	private ProductService prodService;

	//페이지만 이동하는 로직
	@RequestMapping("/searchProduct.do")
	public String searchProduct(Model model) {
		List<ProdVO> prodList = prodService.searchProduct();


		model.addAttribute("prodList", prodList);

		return "admin/searchProduct";
	}



	//post 방식은 해당 로직 처리
	@PostMapping("/prodNameCheck.do")
	@ResponseBody
	public boolean prodNameCheck(@RequestParam("prodNm") String prodNm) {
		boolean check = prodService.prodNameCheck(prodNm);

		if(check) {
			System.out.println("사용가능한 상품명 입니다.");
		}else System.out.println("사용불가능한 상품명 입니다.");

		return check;
	}
//	@PostMapping("/prodInsert.do")
//	public String prodInsert(ProdVO prodVO) {
//		prodService.prodInsert(prodVO);
//		return "admin/prodInsert";
//	}


//	prodService.prodInsert(prodVO);

	//새 상품 등록
	@PostMapping("/prodInsert.do")
	public String prodInsert(ProdVO prodVO, MultipartFile[] uploadFiles,
			HttpServletRequest request) throws IOException {


		List<ProdFileVO> fileList = new ArrayList<>();

		//파일업로드 기능 구현
		if(uploadFiles.length > 0) {
			String attachPath = request.getSession().getServletContext().getRealPath("/")
					+ "/upload/";

			File directory = new File(attachPath);

			//해당 폴더가 존재하지 않으면 폴더 생성
			if(!directory.exists()) {
				directory.mkdir();
			}

		//multipartFile 배열에서 파일들을 꺼내 DB 형식에 맞게 변경한다.
			for (MultipartFile file : uploadFiles) {
				//getOriginalFileName() : 업로드한 파일의 파일명
				if(!file.getOriginalFilename().equals("") &&
				   file.getOriginalFilename() != null) {
					ProdFileVO prodFile = new ProdFileVO();

					prodFile = FileUtils.parseFileInfo(file, attachPath);

					fileList.add(prodFile);
				}
			}
		}

		prodService.prodInsert(prodVO, fileList);

		//등록 후 게시글 목록으로 이동
		return "redirect:searchProduct.do";
	}

		//관리자 페이지 체크용 임시파일
		@GetMapping("/prodInsert.do")
		public String prodInsert() {

			return "admin/prodInsert";
		}

}
