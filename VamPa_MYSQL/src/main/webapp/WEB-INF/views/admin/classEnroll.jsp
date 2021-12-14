<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/goodsEnroll.css">
 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
</head>
<body>
 
    <%@include file="../includes/admin/header.jsp" %>
    
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>클래스 등록</span></div>
                </div>
                <div class="admin_content_main">
                	<form action="/admin/classEnroll" method="post" id="enrollForm">
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>카테고리</label>
                			</div>
                			<div class="form_section_content">
                				<input name="cate_code">
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>크리에이터ID</label>
                			</div>
                			<div class="form_section_content">
                				<input name="creator_id" value="1">
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>클래스명</label>
                			</div>
                			<div class="form_section_content">
                				<input name="class_name">
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>클래스 수강료</label>
                			</div>
                			<div class="form_section_content">
                				<input name="class_price">
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>클래스 소개</label>
                			</div>
                			<div class="form_section_content">
                				<input name="class_info">
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>클래스 TAG</label>
                			</div>
                			<div class="form_section_content">
                				<input name="class_tag">
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>클래스 할인율</label>
                			</div>
                			<div class="form_section_content">
                				<input name="class_discount" value="0">
                			</div>
                		</div>
                	
                	
                	
                	</form>
                </div>
                
    <%@include file="../includes/admin/footer.jsp" %>
<script>
    	
	let enrollForm = $("#enrollForm")
    	
/* 취소 버튼 */
$("#cancelBtn").click(function(){
	location.href="/admin/classManage"
});
	
$("enrollBtn").on("click",function(e){
	e.preventDefault();
	
	enrollForm.submit();

})
    
    
</script>
 
</body>
</html>
