package com.vam.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vam.model.ClassVO;
import com.vam.model.CreatorVO;
import com.vam.service.AdminService;
import com.vam.service.CreatorService;


@Controller
@RequestMapping("/admin")  // admin이라는 이름으로 요청이 들어오면 해당 메서드가 실행됨
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private CreatorService creatorService;
	
	@Autowired
	private AdminService adminService;
	
	/* 관리자 메일 페이지 이동 */
	@RequestMapping(value="main", method = RequestMethod.GET)
	public void adminMainGET() throws Exception{
		
		logger.info("관리자 페이지 이동");
	}
	

	/* 강좌 관리 페이지 접속 */
    @RequestMapping(value = "classManage", method = RequestMethod.GET)
    public void goodsManageGET() throws Exception{
        logger.info("강좌 관리 페이지 접속");
    }
    
    /* 강좌 등록 페이지 접속 */
    @RequestMapping(value = "classEnroll", method = RequestMethod.GET)
    public void goodsEnrollGET(Model model) throws Exception{
        logger.info("강좌 등록 페이지 접속");
        
        ObjectMapper objm = new ObjectMapper();
        
        List list = adminService.cateList();
        
        String cateList = objm.writeValueAsString(list);
        
        model.addAttribute("cateList", cateList);
        
        logger.info("변경 전......" + list);
        logger.info("변경 후......" + cateList); 
    }
    
    /* 크리에이터 등록 페이지 접속 */
    @RequestMapping(value = "creatorEnroll", method = RequestMethod.GET)
    public void authorEnrollGET() throws Exception{
        logger.info("작가 등록 페이지 접속");
    }
    
    /* 크리에이터 등록 */
    @RequestMapping(value = "creatorEnroll.do", method = RequestMethod.POST)
    public String creatorEnrollPOST(CreatorVO creator, RedirectAttributes rttr) throws Exception{
    	
    	logger.info("creatorEnroll :" + creator);
    	
    	creatorService.creatorEnroll(creator);
    	
    	rttr.addFlashAttribute("enroll_result",creator.getCreator_name()); //등록성공 메세지(작가이름)
    	
    	
    	return "redirect:/admin/creatorManage";
    }
    
    
    /* 강좌 등록 */
    @PostMapping("/classEnroll")
    public String classEnrollPOST(ClassVO oneclass, RedirectAttributes rttr) {
    	logger.info("classEnrollPOST...." + oneclass);
    	
    	adminService.classEnroll(oneclass);
    	
    	rttr.addFlashAttribute("enroll_result", oneclass.getClass_name());
    	
    	return "redirect:/admin/classManage";
    }
    
    
    
    
    /* 작가 관리 페이지 접속 */
    @RequestMapping(value = "creatorManage", method = RequestMethod.GET)
    public void authorManageGET() throws Exception{
        logger.info("작가 관리 페이지 접속");
    }
    

 
	
	

}
