package com.bit.controller;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bit.model.BoardVO;
import com.bit.service.BoardService;

@Controller
@RequestMapping("/board/*") // http://localhost:8080/WEB_INF/views/ board /list/.jsp
public class BoardController {
	
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService bservice;
	
	/* 게시판 목록 페이지 접속 */
	@GetMapping("/list")
	// => @RequestMaping(value="list", method=RequestMethod.GET)
	public void boardListGET(Model model) {
		System.out.println("게시판 목록 페이지 진입");
		
		model.addAttribute("list", bservice.getList());
		
		
	}
	/*게시판 등록 페이지 접속 */
	
	@GetMapping("/enroll")
	// => @RequestMapping(value="enroll", moethod=RequestMethod.GET)
	public void boardEnrollGET() {
		System.out.println("게시판 등록 페이지 진입");
	}
	
	/* 게시판 등록*/
	@PostMapping("/enroll")
	public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {
		System.out.println("BoardVO : " + board);
				
		bservice.enroll(board);
		
		rttr.addFlashAttribute("result", "enrol success");
	
		return "redirect:/board/list";
	}

}
