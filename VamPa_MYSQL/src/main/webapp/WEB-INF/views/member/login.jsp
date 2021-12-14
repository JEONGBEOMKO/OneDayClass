<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/css/member/login.css">
</head>
<body>


<div class="wrapper">
  <div class="wrap">
	<form id="login_form" method="post">  
	
	
			<div class="login_wrap">
				<div class="logo_wrap">
					<span>Login</span>	
	            </div>
				
				<div class="login_sns">
            		<li><a href=""><i class="fab fa-instagram"></i></a></li>
            		<li><a href=""><i class="fab fa-google"></i></i></a></li>
            		<li><a href=""><i class="fas fa-comment-dots"></i></a></li>
            	</div>
	      
					<span>ID</span>
					<div class="id_input_box">
					  <input class="id_input" name = "memberId">
					</div>
			</div>
			
			<div class="pw_wrap">
					<span>PW</span>
					<div class="pw_input_box">
					  <input class="pw_input" name = "memberPw">
					</div>
			</div>
			
			<c:if test= "${result ==0}">
			<div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
			</c:if>
			<div class="login_button_wrap">
			  <input type="button" class="login_button" value="Submit">
			</div>
    </form>  
	</div>
  </div>
</div>

<script>
	
	/* 로그인 버튼 클릭 메서드 */
	$(".login_button").click(function(){
		
		/* alert("로그인 버튼 작동"); */
		
		/* 로그인 메서드 서버 요청 */
		$("#login_form").attr("action", "/member/login.do");
		$("#login_form").submit();
	});

</script>

</body>
</html>