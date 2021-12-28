<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/creatorEnroll.css">
 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
</head>
<body>
 
   	 	<%@include file="../includes/admin/header.jsp" %>
   	 	
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>크리에이터 등록</span></div>
                    	<div class="admin_content_main">
						    <form action="/admin/creatorEnroll.do" method="post" id="enrollForm">
						            <div class="form_section">
						                <div class="form_section_title">
						                    <lavel>USER_ID</lavel>
						                </div>
						            
						                <div class="form_section_content">
						                    <input name="memberId">
						                    <span id ="warn_memberId">USER ID를 입력하세요</span>
						                </div>
						            </div>
						            
						            
						            <div class="form_section">
						                <div class="form_section_title">
						                    <label>크리에이터 이름</label>
						                </div>
						                <div class="form_section_content">
						                    <input name="creator_name">
						                    <span id = "warn_creator_name">크리에이터 이름을 입력하세요</span>
						                </div>
						            </div>
						            <div class="form_section">
						                <div class="form_section_title">
						                    <label>크리에이터 소개</label>
						                </div>
						                <div class="form_section_content">
						                    <input name="creator_intro" type="text">
						                    <span id = "warn_creator_intro">크리에이터 소개말을 입력하세요</span>
						                </div>
						            </div>	 	          
						    </form>
						    		<div class="btn_section">
						    				<button id="cancelBtn" class="btn">취 소</button>
						    				<button id="enrollBtn" class="btn enroll_btn">등 록</button>
						    		
						    		</div>
						</div>
                    
                    
         <%@include file="../includes/admin/footer.jsp" %>
         
<script>

/* 등록 버튼 */


$("#enrollBtn").click(function(){
		/* 검사 통과 유무 변수 */
		let idCheck = false;  // USER_ID
		let nameCheck = false; //크리에이터 이름
		let introCheck = false; //크리에이터 소개
		
		/* 입력값 변수 */
		
		let memberId = $('input[name=memberId]').val();           // 유저 id
		let creator_name = $('input[name=creator_name]').val();   // 크리에이터 이름
		let creator_intro = $('input[name=creator_intro]').val(); // 크리에이터 소개
		
		/* 공란 경고 span태그 */
		let wMemberId = $('#warn_memberId');
		let wCreatorName = $('#warn_creator_name');
		let wCreatorIntro = $('#warn_creator_intro');
		
		/* UserId 공란 체크 */
		if(memberId === ''){
			wMemberId.css('display','block');
			idCheck = false;
		} else{
			wMemberId.css('display','none');
			idCheck = true;
		}
		
		/* 크리에이터 이름 공란 체크 */
		if(creator_name ===''){
			$(wCreatorName).css('display','block');
			nameCheck = false;
		} else{
			wCreatorName.css('display','none');
			nameCheck = true;
		}
		
		/* 크리에이터 소개 공란 체크 */
		if(creator_intro ==='') {
			wCreatorIntro.css('display','block');
			introCheck = false;
		} else{
			wCreatorIntro.css('display','none');
			introCheck = true;
		}
		
		if(idCheck && nameCheck && introCheck){
			$("#enrollForm").submit();
		
		} else{
			return;
		}
		
		
 });




/* 취소 버튼 */
$("#cancelBtn").click(function(){
	location.href="/admin/creatorManage"
});

</script>
 
</body>
</html>
