<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>WithClass_Login</title>
   <link rel="stylesheet" href="/resources/css/member/login.css">
   <script src="login.js"></script>
   <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
<div class="main">
      <!--웹페이지 상단-->
      <header>
         <!--language select-->

         <div class="select-lang">
            <select id="id-lang" class="selectbox" name="lang" onchange="chageLangSelect()">
               <option value="ko">한국어</option>
               <option value="en">English</option>
            </select>
         </div>

         <!--NAVER LOGO-->
         <div class="logo">
            <a href="/main" target="_blank"><img src="/resources/img/Logo6.png" width="200"
                  class="image"></a>
         </div>
      </header>

      <!--로그인 부분-->
      <section class="login-wrap">
		<form id="login_form" method="post">
         <div class="login-id-wrap">
            <input class="id_input" name="memberId" id="input-id" placeholder="아이디" type="text"></input>
         </div>
         <div class="login-pw-wrap">
            <input class="pw_input" name="memberPw" id="input-pw" placeholder="비밀번호" type="password"></input>
         </div>
         <div class="login-btn-wrap">
             <button class="login_button" id="login-btn">로그인</button>
         </div>
        </form>
         <div class="under-login">
            <span class="stay-check">
               <input id="stay-checkbox" type="checkbox"></input>
               <label for="stay-checkbox" id="stay-text">로그인 상태 유지</label>
            </span>
         
               </label>
               <!-- IP 보안 <input class="ip-checkbox" type="checkbox" name="stay-btn" value="stay"> -->
            </span>
         </div>
		</section>
   
      <!--class,PW 찾기 및 회원가입 부분-->
      <section class="find-signup-wrap">

         <div id="find-signup-wrap-ko">
            <span class="find-id">
               <a href="https://nid.naver.com/user2/help/idInquiry?lang=ko_KR" target="_blank" title="QR코드 로그인">아이디
                  찾기</a>
            </span>

            <span class="find-pw">
               <a href="https://nid.naver.com/user2/help/pwInquiry?lang=ko_KR" target="_blank"
                  title="일회용번호 로그인">비밀번호 찾기</a>
            </span>

            <span class="sign-up">
               <a href="https://nid.naver.com/user2/V2Join?m=agree&lang=ko_KR" target="_blank"
                  title="일회용번호 로그인">회원가입</a>
            </span>
         </div>

         <div id="find-signup-wrap-en" style="display:none;">
            
            <span class="find-id-en">
               <span>Forgot your</span> 
               <a href="https://nid.naver.com/user2/help/idInquiry?lang=ko_KR" target="_blank" title="QR코드 로그인">Username</a>
            </span>

            <span class="find-pw">
               <span>or</span> 
               <a href="https://nid.naver.com/user2/help/pwInquiry?lang=ko_KR" target="_blank"
                  title="일회용번호 로그인">Password?</a>
            </span>

            <span class="sign-up">
               <a href="https://nid.naver.com/user2/V2Join?m=agree&lang=ko_KR" target="_blank"
                  title="일회용번호 로그인">Sign up</a>
            </span>
         </div>


      </section>

      <!--저작권 정보-->
      <footer>
         <div class="copyright-wrap">
            <span> ©WITH CLASS. </span>
         </div>
      </footer>

   </div>
   
<script>
	
	/* 로그인 버튼 클릭 메서드 */
	$(".login_button").click(function(){
		
		 //alert("로그인 버튼 작동");
		
		/* 로그인 메서드 서버 요청 */
		
		$("#login_form").attr("action", "/member/login.do");
		$("#login_form").submit();
		
	});

</script>

</body>
</html>