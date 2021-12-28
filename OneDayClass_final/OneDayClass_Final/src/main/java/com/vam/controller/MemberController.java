package com.vam.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.vam.model.MemberVO;
import com.vam.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberservice;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	
	//회원가입 페이지 이동
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void joinGET() {
		
		logger.info("회원가입 페이지 진입");
	}
	
	//회원가입
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception{
		
		String rawPw = "";		//인코딩 전 비밀번호
		String encodePw = ""; 	//인코딩 수 비밀번호
		
		rawPw = member.getMemberPw();			// 비밀번호 데이터 얻음
		encodePw = pwEncoder.encode(rawPw);		// 비밀번호 인코딩
		member.setMemberPw(encodePw);			// 인코딩 된 비밀번호 member객체에 다시 저장
		
		memberservice.memberJoin(member);
		
		System.out.println("join Service 성공");
		
		return "redirect:/main";
	}
	
	
	/* 비동기방식 로그아웃 메서드 */
	@RequestMapping(value="logout.do", method=RequestMethod.POST)
	@ResponseBody
	public void logoutPOST(HttpServletRequest request) throws Exception{
		logger.info("비동기 로그아웃 메서드 진입");
		HttpSession session = request.getSession();
		session.invalidate();
			
	}
	
	//로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGET() {
		
		System.out.println("로그인 페이지 진입");
	}
	
	//아이디 중복 검사
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String memberId) throws Exception{
		logger.info("memberIdChk()진입");
		int result = memberservice.idCheck(memberId);
		logger.info("결과값 = " + result);
		if(result !=0) {
			return "fail"; //중복 아이디 존재
		}else {
			return "success"; //중복 아이디 없음
		}
		
	} // memberIdChkPOST() 종료
	
	
	/* 이메일 인증 */
	@RequestMapping(value = "/mailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) throws Exception{
		
		/* 뷰(View)로부터 넘어온 데이터 확인 */
		System.out.println("이메일 데이터 전송 확인");
		System.out.println("이메일주소: " + email);
		
		/* 인증번호(난수) 생성 */
		Random random = new Random();
		int checkNUM = random.nextInt(888888) + 111111;
		System.out.println("인증번호: " + checkNUM);  
		
		/* 이메일 보내기 */
		String setFrom = "krabat116@gmail.com";
		String toMail = email;
		String title = "회원가입 인증 이메일 입니다.";
		String content = 
				"홈페이지에 방문해주셔서 감사합니다." + 
				"<br><br>" +
				"인증 번호는 " + checkNUM + "입니다." +
				"<br>" + 
				"해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content,true);
			mailSender.send(message);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String num = Integer.toString(checkNUM);
				
		return num;
		
	}
	
	/* 로그인 */
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
		
//		System.out.println("login 메서드 진입");
//		System.out.println("전달된 데이터: " + member);
/*		HttpSession session = request.getSession();
		MemberVO lvo = memberservice.memberLogin(member);
		if(lvo == null) { //일치하지 않는 아이디 비번 입력 경우
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/member/login";
		}
		session.setAttribute("member", lvo);  //일치하는 아이디, 비밀번호 경우
		return "redirect:/main"; */
		
		HttpSession session = request.getSession();
		String rawPw = "";
		String encodePw = "";
		
		MemberVO lvo = memberservice.memberLogin(member);
		
		if(lvo != null) {   // 일치하는 아이디 존재
			
			rawPw = member.getMemberPw();
			encodePw = lvo.getMemberPw();
			
			if(true == pwEncoder.matches(rawPw,  encodePw)) {	// 비밀번호 일치여부 판단
				
				lvo.setMemberPw("");					// 인코딩된 번호를 지움
				session.setAttribute("member", lvo);	// session에 사용자의 정보 저장
				return "redirect:/main";				//메인페이지 이동
				
			} else {
				
				rttr.addFlashAttribute("result",0);
				return "redirect:/member/login";		//로그인 페이지로 이동
			}
		} else {		// 일치하는 아이디 없을시
			
			rttr.addFlashAttribute("result",0);
			return "redirect:/member/login";			//로그인 페이지로 이동
		}
		
	}
	
	/* 메인페이지 로그아웃 */
	@RequestMapping(value="logout.do", method=RequestMethod.GET)
	public String logoutMainGet(HttpServletRequest request) throws Exception{
		
		logger.info("logoutMainGET메서드 진입");
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return"redirect:/main";
		
	}
	

	
	

}// controller end
