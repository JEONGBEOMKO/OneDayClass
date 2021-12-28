package com.vam.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vam.model.CartDTO;
import com.vam.model.MemberVO;
import com.vam.model.WishDTO;
import com.vam.service.WishService;

@Controller
public class WishController {

	@Autowired
	private WishService wishService;
	
	@PostMapping("/wish/add")
	@ResponseBody
	public String addWishPOST(WishDTO wish, HttpServletRequest request) {
		// 로그인 체크
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		if(mvo == null) {
			return "5"; //로그인이 안되어있을시, 5 반환
		}
		
		// 카트 등록
		
		int result = wishService.addWish(wish);
		
		return result + "";
	}
	
	@GetMapping("/wish/{memberId}")
	public String wishPageGET(@PathVariable("memberId") String memberId, Model model) {
		
		model.addAttribute("wishInfo", wishService.getWishList(memberId));
		
		return "/wish";
	}
	
	@PostMapping("/wish/delete")
	public String deleteWishPOST(WishDTO wish) {
		
		wishService.deleteWish(wish);
		
		return "redirect:/wish/"+wish.getMemberId();
	}
	
    @RequestMapping(value = "/order", method=RequestMethod.GET)
	   public void orderPageGET() {
	      
	   }
	
	
}
