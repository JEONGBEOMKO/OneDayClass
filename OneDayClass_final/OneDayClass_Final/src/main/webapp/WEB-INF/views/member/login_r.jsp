<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oneday Class</title>
    <script
  	src="https://code.jquery.com/jquery-3.4.1.js"
  	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  	crossorigin="anonymous"></script>
  	
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/member/login_r.css">
</head>
<body>
    <div class="wrap">
    
        <div class="login">
       
            <h2>Log-In</h2>
            <div class="login_sns">
            <li><a href=""><i class="fab fa-instagram"></i></a></li>
            <li><a href=""><i class="fab fa-google"></i></i></a></li>
            <li><a href=""><i class="fas fa-comment-dots"></i></a></li>
            </div>
            <div class="login_id">
                <h4>ID</h4>
                <input type="email" name="memberId" id="" placeholder="ID">
            </div>
            <div class="login_pw">
                <h4>PW</h4>
                <input type="password" name="" id="memberPw" placeholder="Password">
            </div>
            <div class="login_etc">
                <div class="sign up">
                <a href="">Sign Up!</a>
                </div>
                <div class="forgot_pw">
                <a href="">Forgot Password?</a>
            </div>
            </div>
            <div class="submit">
                <input type="button" class="login_button" value="Submit">
            </div>
          
        </div>
    </div>
    
   <!--  <script>
	
	/* 로그인 버튼 클릭 메서드 */
	$(".login_button").click(function(){
		
		/* alert("로그인 버튼 작동"); */
		
		/* 로그인 메서드 서버 요청 */
		$("#login_form").attr("action", "/member/login.do");
		$("#login_form").submit();
	});

    </script> -->
    
    
</body>
</html>