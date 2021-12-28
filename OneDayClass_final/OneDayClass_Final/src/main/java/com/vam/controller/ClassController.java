package com.vam.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AuthorizationServiceException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vam.model.EclassVO;
import com.vam.service.ClassService;



@Controller
@RequestMapping(value="/class")
public class ClassController {
	private static final Logger logger = LoggerFactory.getLogger(ClassController.class);
	
	@Autowired
	ServletContext application;
	
	@Autowired
	private ClassService classService;

	//기본 페이지 이동
	@RequestMapping(value = "/class_basic", method=RequestMethod.GET)
	public void basicPageGET() {
		logger.info("크리에이터 기본정보 페이지 진입");
	}
	
	//제목 페이지 이동
	@RequestMapping(value = "/class_title", method=RequestMethod.GET)
	public void titlePageGET() {
		logger.info("크리에이터 제목및커버 페이지 진입");
	}
	
	//클래스소개 페이지 이동
	@RequestMapping(value = "/class_info", method=RequestMethod.GET)
	public void infoPageGET() {
		
		logger.info("크리에이터 클래스소개 페이지 진입");
	}
	
	//커리큘럼 페이지 이동
	@RequestMapping(value = "/class_curriculum", method=RequestMethod.GET)
	public void curriculumPageGET() {
		logger.info("크리에이터 커리큘럼 페이지 진입");
	}
	
	//크리에이터 페이지 이동
	@RequestMapping(value = "/class_creator", method=RequestMethod.GET)
	public void creatorPageGET() {
		logger.info("크리에이터 크리에이터소개 페이지 진입");
	}
	
	//크리에이터 전체 페이지 이동
	@RequestMapping(value = "/class_total", method=RequestMethod.GET)
	public void totalPageGET(Model model, EclassVO eclass) throws Exception{
		logger.info("크리에이터 전체페이지 진입");
		
		ObjectMapper objm = new ObjectMapper();
		List list = classService.cateList();
		String cateList = objm.writeValueAsString(list);
		model.addAttribute("cateList", cateList);
		logger.info("변경 전...." + list);
		logger.info("변경 후...." + cateList);
	}
	
//    /* 상품 등록 */
//	@PostMapping("/class_total")
//	public String totalPagePOST(EclassVO eclass, RedirectAttributes rttr){
//		
//		logger.info("클래스 등록......");
//		
//		classService.classEnroll(eclass);
//		
//		rttr.addFlashAttribute("enroll_result", eclass.getClass_name());
//		
//		return("redirect:/main");
//		
//	}	
	
	
	@RequestMapping(value="/class_total", method=RequestMethod.POST)
	public String totalPagePOST(EclassVO eclass, HttpServletRequest request, Model model) throws Exception{
        String path=application.getRealPath("../resources/upload");
        String img1 = eclass.getClass_thumb_uploadpath().getOriginalFilename();
        File file1 = new File(path, img1);  //input type="file" name="upload_f"
        try{ eclass.getClass_thumb_uploadpath().transferTo(file1); }catch(Exception ex){  }  
        eclass.setClass_thumb_filename(img1);
        
        String img2 = eclass.getClass_img1_uploadpath().getOriginalFilename();
        File file2 = new File(path, img2);  //input type="file" name="upload_f"
        try{ eclass.getClass_img1_uploadpath().transferTo(file2); }catch(Exception ex){  }  
        eclass.setClass_img1_filename(img2);
        
        String img3 = eclass.getClass_img2_uploadpath().getOriginalFilename();
        File file3 = new File(path, img3);  //input type="file" name="upload_f"
        try{ eclass.getClass_img2_uploadpath().transferTo(file3); }catch(Exception ex){  }  
        eclass.setClass_img2_filename(img3);
        
        String img4 = eclass.getClass_img3_uploadpath().getOriginalFilename();
        File file4 = new File(path, img4);  //input type="file" name="upload_f"
        try{ eclass.getClass_img3_uploadpath().transferTo(file4); }catch(Exception ex){  }  
        eclass.setClass_img3_filename(img4);
        
        String img_profile = eclass.getCreator_profile_uploadpath().getOriginalFilename();
        File file5 = new File(path, img_profile);  //input type="file" name="upload_f"
        try{ eclass.getCreator_profile_uploadpath().transferTo(file5); }catch(Exception ex){  }  
        eclass.setCreator_profile_filename(img_profile);
		
//		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
//		MultipartFile file = multipartRequest.getFile("file");
		
		String class_name = request.getParameter("class_name");
		model.addAttribute("enroll_result", class_name);
		
		classService.classEnroll(eclass);
		
		//System.out.println("출력 제발 되어라..." + eclass.getClass_name());
		
		return("redirect:/main");
		
	}	

	
}