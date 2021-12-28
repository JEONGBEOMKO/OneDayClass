package com.vam.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vam.model.CartDTO;
import com.vam.model.Criteria;
import com.vam.model.EclassVO;
import com.vam.model.MemberVO;
import com.vam.model.PageDTO;
import com.vam.model.ReplyVO;
import com.vam.service.ClassService;
import com.vam.service.MainService;
import com.vam.service.MemberService;
import com.vam.service.ReplyService;

import org.springframework.ui.Model;


@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	private MainService mainService;
	
	@Autowired
	private ReplyService replyService;
	
	@Autowired
	private MemberService memberservice;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	
	//메인 페이지 이동
	@RequestMapping(value = "/main", method=RequestMethod.GET)
	public String mainPageGET(Model model, EclassVO eclass) {
		int startRow=0;
		model.addAttribute("startRow", startRow);
		
		logger.info("메인 페이지 진입");
		try {
			List<EclassVO> vo = mainService.classList2(startRow);
			model.addAttribute("vo", vo);
			
			List<EclassVO> dto = mainService.classList1(startRow);
			model.addAttribute("dto", dto);
		} catch (Exception e) {System.out.println("오류 이유: " + e.toString());}

		return "/main";
	}
	
	   /* 상품 검색 */
	@GetMapping("search")
	public String searchGoodsGET(Criteria cri, Model model, HttpServletRequest request) {
	     
		String keyword = request.getParameter("keyword"); 
		
		logger.info("cri : " + cri);
  
		List<EclassVO> list = mainService.classList(cri);
		logger.info("pre list : " + list);
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
			logger.info("list : " + list);
		} else {
			model.addAttribute("listcheck", "empty");
 
			return "search";
		}
		
		model.addAttribute("keyword", keyword);
  
		model.addAttribute("pageMaker", new PageDTO(cri, mainService.classTotal(cri)));
  
		return "search";
      
   }
	
    /* 강좌 상세 */
    @GetMapping("/detail/{class_id}")
    public String classDetailGET(@PathVariable("class_id")int class_id, Model model) throws Exception {
    	
    	mainService.update(class_id);
       
       logger.info("classDetailGET()..........");
       
       model.addAttribute("classInfo", mainService.classInfo(class_id));
       model.addAttribute("classCate2", mainService.classCate2(class_id));
       model.addAttribute("classCate1", mainService.classCate1(class_id));
       
       
       List<ReplyVO> replyList = replyService.readReply(class_id);
       model.addAttribute("replyList", replyList);
    
       return "/detail";
    }
    
//    //댓글 수정 POST
//    @RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
//    public String replyUpdate(ReplyVO vo, Criteria cri, Model model, @RequestParam("class_id") int class_id, @RequestParam("reply_id") int reply_id,
//  		  @RequestParam("reply_memo") String reply_memo, @RequestParam("memberName") String memberName) throws Exception {
//       logger.info("reply Update");
//       
//       ReplyVO rvo = new ReplyVO();
//       rvo.setClass_id(class_id);
//       rvo.setMemberName(memberName);
//       rvo.setReply_id(reply_id);
//       rvo.setReply_memo(reply_memo);
//       
//       replyService.updateReply(rvo);
//       
//        model.addAttribute("class_id", rvo.getClass_id());
//        model.addAttribute("reply_memo", rvo.getReply_memo());
//        model.addAttribute("memberId", rvo.getMemberId());
//       
//       return "redirect:/detail/" + rvo.getClass_id();
//    }
    
    
    @RequestMapping(value="/replyWrite", method = RequestMethod.POST)
    public String replyWrite(ReplyVO vo, Criteria cri, Model model) throws Exception{
       replyService.writeReply(vo);
       
       model.addAttribute("class_id", vo.getClass_id());
       model.addAttribute("reply_memo", vo.getReply_memo());
       model.addAttribute("memberId", vo.getMemberId());
       
       return "redirect:/detail/" + vo.getClass_id();
    }
    
    //댓글 삭제
    @RequestMapping(value="/replyDelete", method = RequestMethod.POST)
    public String replyDelete(ReplyVO vo, Criteria cri, Model model) throws Exception {
       logger.info("reply Write");
       
       replyService.deleteReply(vo);
       
        model.addAttribute("class_id", vo.getClass_id());
        model.addAttribute("reply_memo", vo.getReply_memo());
        model.addAttribute("memberId", vo.getMemberId());
        
        System.out.println("삭제 reply_id" + vo.getReply_id());
       
       return "redirect:/detail/" + vo.getClass_id();
    }
	
		
		
		/* get방식 */
		@RequestMapping(value="/category")
		public void categoryPageGET(@RequestParam("c") int cate_code, Model model, HttpServletRequest request) throws Exception{
			int startRow=0;
			int endRow=0;
			String pnum;
			int pageNUM;
			int pageCount=0;
			int startPage, endPage, tmp;
			
			pnum = request.getParameter("pageNum");
			if(pnum=="" || pnum==null || pnum.equals("")) {pnum="1";}
			pageNUM = Integer.parseInt(pnum);
			startRow = ((pageNUM-1) * 10);
			endRow = 10;
			
			int Gtotal = mainService.dbCountAll(cate_code);
		
			if(Gtotal % 10 == 0){pageCount = Gtotal / 10;}
			else{pageCount = (Gtotal / 10) + 1;}
			tmp = (pageNUM - 1) % 10;
			startPage = pageNUM - tmp;
			endPage = startPage + 9;
			if(endPage > pageCount) {endPage = pageCount;}
			
			System.out.println("startRow" + startRow);
			System.out.println("endRow" + endRow);
			System.out.println("cate_code" + cate_code);
			System.out.println("Gtotal" + Gtotal);
			
			
			model.addAttribute("Gtotal", Gtotal);
			model.addAttribute("pageCount", pageCount);
			model.addAttribute("startPage", startPage);
			model.addAttribute("endPage", endPage);
			model.addAttribute("pageNUM", pageNUM);
			model.addAttribute("cateCode", cate_code);
			
			List<EclassVO> cate = mainService.cateIntro(cate_code, startRow, endRow);
			
			model.addAttribute("cate", cate);
			model.addAttribute("cateCate0", mainService.cateCate0(cate_code));
			model.addAttribute("cateCate1", mainService.cateCate1(cate_code));
			model.addAttribute("cateCate2", mainService.cateCate2(cate_code));
			
//			List<EclassVO> list = mainService.classList(cri);
//			if(!list.isEmpty()) {
//				model.addAttribute("list", list);
//			} else {
//				model.addAttribute("listcheck", "empty");
//				
//			}
			//model.addAttribute("pageMaker", new PageDTO(cri, mainService.classTotal(cri)));
			
//			List<EclassVO> cate2 = mainService.cateParent(cate_code2);
//			model.addAttribute("cate2", cate2);
			
		}
		
//		@GetMapping("/category")
//		public String categoryGET(Criteria cri, Model model) throws Exception {
//		     
//			List<EclassVO> list2 = mainService.classList(cri);
//			
//			model.addAttribute("list", list2);
//	  
//			model.addAttribute("pageMaker", new PageDTO(cri, mainService.cateGetTotal(cri)));
//	  
//			return "/category";
//	      
//	   }
		
		
		
		
		/*  마이페이지 이동 */
	    @RequestMapping(value = "mypage/myinfo", method=RequestMethod.GET)
		   public void myinfoPageGET(Model model) {
	    		//int creator_id = 5;
	    		//model.addAttribute("myClass", mainService.myClass(memberId));
	    	int startRow=0;
	    	List<EclassVO> dto = mainService.classList1(startRow);
			model.addAttribute("myClass", dto);
		      logger.info("mypage 내정보화면 접속");
		   }
	    
	    
	    /*  마이페이지 정보수정화면 이동 */
	    @RequestMapping(value = "mypage/editinfo", method=RequestMethod.GET)
		   public void editinfoPageGET() {
		      
		      logger.info("mypage 정보수정화면 접속");
		   }
	    
	    /* 회원정보 수정 */
		@PostMapping("/mypage/memberModify")
		public String memberModifyPOST(MemberVO member, RedirectAttributes rttr) throws Exception{
			
			String rawPw = "";
			String encodePw="";
			
			rawPw = member.getMemberPw();
			encodePw = pwEncoder.encode(rawPw);
			member.setMemberPw(encodePw);
			
			System.out.println("memberModifyPOST……." + member);
			int result = memberservice.memberModify(member);
			rttr.addFlashAttribute("modify_result", result);
			return "redirect:/member/logout.do";
		}
	    
	    
	    
		
}