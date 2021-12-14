<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/classEnroll.css">
 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/31.0.0/classic/ckeditor.js"></script>
</head>
</head>
<body>
 
    <%@include file="../includes/admin/header.jsp" %>
    
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>클래스 등록</span></div>
                
                <div class="admin_content_main">
                	<form action="/admin/classEnroll" method="post" id="enrollForm">
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>카테고리</label>
                			</div>
                			<div class="form_section_content">
                				<div class = "cate_wrap">
                						<span>대분류</span>
                						<select class="cate1">
                								<option selected value = "none">선택</option>
                						</select>
                				</div>
                				<div class = "cate_wrap">
                						<span>중분류</span>
                						<select class="cate2">
                								<option selected value = "none">선택</option>
                						</select>
                				</div>
                				<div class = "cate_wrap">
                						<span>소분류</span>
                						<select class="cate3" name = "cate_code">
                								<option selected value = "none">선택</option>
                						</select>
                				</div>
                				<span class="ck_warn cate_code_warn">카테고리를 선택해주세요</span>
                				
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>크리에이터ID</label>
                			</div>
                			<div class="form_section_content">
                				<input name="creator_id" value="1">
                				<span class="ck_warn creator_id_warn">크리에이터ID를 입력해주세요</span>
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>클래스명</label>
                			</div>
                			<div class="form_section_content">
                				<input name="class_name">
                				<span class="ck_warn class_name_warn">클래스명을 입력해주세요</span>
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>클래스 수강료</label>
                			</div>
                			<div class="form_section_content">
                				<input name="class_price">
                				<span class="ck_warn class_price_warn">클래스 수걍료를 입력해주세요</span>
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>클래스 소개</label>
                			</div>
                			<div class="form_section_content bit">
                				<textarea name="class_info" id="class_info_textarea"></textarea>
                				<span class="ck_warn class_info_warn">클래스 소개를 입력해주세요</span>
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>클래스 TAG</label>
                			</div>
                			<div class="form_section_content">
                				<input name="class_tag">
                				<span class="ck_warn class_tag_warn">클래스 TAG 입력해주세요</span>
                			</div>
                		</div>
                		
                		<div class="form_section">
                			<div class="form_section_title">
                				<label>클래스 할인율</label>
                			</div>
                			<div class="form_section_content">
                				<input id = "discount_interface" maxlength="2" value="0">
                				<input name="class_discount" type = "hidden" value="0">
                				<span class="step_val">할인 가격: <span class= "span_discount"></span></span>
                				<span class="ck_warn class_discount_warn">클래스 할인률을 입력해주세요</span>
                			</div>
                		</div>
                	</form>
                			<div class="btn_section">
                					<button id = "cancelBtn" class="btn">취 소</button>
                					<button id = "enrollBtn" class="btn enroll_btn">등 록</button>
                			</div>
                </div>
                </div>  
                
    <%@include file="../includes/admin/footer.jsp" %>
    
<script>
    	
	let enrollForm = $("#enrollForm")
    	
/* 취소 버튼 */
$("#cancelBtn").click(function(){
	location.href="/admin/classManage"
});

/* 강좌 등록 버튼*/	
$("#enrollBtn").on("click",function(e){
	
	e.preventDefault();
	
	/* 체크 변수 */
	let cate_codeCk = false;
	let creator_idCk = false;
	let class_nameCk = false;
	let class_priceCk = false;
	let class_infoCk = false;
	let class_tagCk = false;
	let class_discountCk = false;
	
	let cate_code = $("select[name = 'cate_code']").val();
	let creator_id = $("input[name = 'creator_id']").val();
	let class_name = $("input[name = 'class_name']").val();
	let class_price = $("input[name = 'class_price']").val();
	let class_info = $(".bit p").html();
	let class_tag = $("input[name = 'class_tag']").val();
	let class_discount = $("input[name = 'class_discount']").val();
	
	
	/* 공란 체크 */
	if(cate_code != 'none' && cate_code !=''){
		$(".cate_code_warn").css('display','none');
		cate_codeCk = true;
	} else {
		$(".cate_code_warn").css('display','block');
		cate_codeCk = false;
	}
	
	if(creator_id){
		$(".creator_id_warn").css('display','none');
		creator_idCk = true;
		
	} else{
		$(".cretor_id_warn").css('display','block');
		creator_idCk = false;
	}
	
	if(class_name){
		$(".class_name_warn").css('display','none');
		class_nameCk = true;
	} else{
		$(".class_name_warn").css('display','block');
		class_nameCk = false;
	}
	
	if(class_price !=0 && class_price !='' ){
		$(".class_price_warn").css('display','none');
		class_priceCk = true;
	}else{
		$(".class_price_warn").css('display','block');
		class_priceCk = false;
	}
	
	if(class_info != '<br data-cke-filler="true">'){
		$(".class_info_warn").css('display','none');
		class_infoCk = true;
	}else{
		$(".class_info_warn").css('display','block');
		class_infoCk = false;
	}
	
	if(class_tag){
		$(".class_tag_warn").css('display','none');
		class_tagCk = true;
	}else{
		$(".class_tag_warn").css('display','block');
		class_tagCk = false;
	}
	
	if(class_discount < 1 && class_discount != ''){
		$(".class_discount_warn").css('display','none');
		class_discountCk = true;
	}else{
		$(".class_discount_warn").css('display','block');
		class_discountCk = false;
	}
	
	if(cate_codeCk && creator_idCk && class_nameCk && class_priceCk && class_infoCk && class_tagCk && class_discountCk ){
		enrollForm.submit();
	}else{
		return false;
	}
	

});





/* 위지웍 적용 */
 
	/* 강좌 소개 */
	ClassicEditor
		.create(document.querySelector('#class_info_textarea'))
		.catch(error=>{
			console.error(error);
		});
/* 
	$(document).ready(function(){
		console.log('${cateList}');
	});
		 */
		 
/* 카테고리 */
 	let cateList = JSON.parse('${cateList}');
	
	let cate1Array = new Array();
	let cate2Array = new Array();
	let cate3Array = new Array();
	let cate1Obj = new Object();
	let cate2Obj = new Object();
	let cate3Obj = new Object();
	
	let cateSelect1 = $(".cate1");
	let cateSelect2 = $(".cate2");
	let cateSelect3 = $(".cate3");
	
	/* 카테고리 배열 초기화 매서드 */
	function makeCateArray(obj,array,cateList, tier){
		for(let i = 0; i< cateList.length; i++){
			if(cateList[i].tier === tier){
				obj = new Object();
				
				obj.cate_name = cateList[i].cate_name;
				obj.cate_code = cateList[i].cate_code;
				obj.cate_parent = cateList[i].cate_parent;
				
				array.push(obj);
			}
		}
	}
	
	/* 배열 초기화 */
	makeCateArray(cate1Obj,cate1Array,cateList,1);
	makeCateArray(cate2Obj,cate2Array,cateList,2);
	makeCateArray(cate3Obj,cate3Array,cateList,3);
	
	
	$(document).ready(function(){
		console.log(cate1Array);
		console.log(cate2Array);
		console.log(cate3Array);
	});
	 
	 
	 
	 /* 대분류 <option> 태그 */
	 for(let i = 0; i < cate1Array.length; i++){
		 cateSelect1.append("<option value='" +cate1Array[i].cate_code+ "'>" + cate1Array[i].cate_name + "</option>")
	 }
	 
	 /* 중분류 <option> 태그 */
	 $(cateSelect1).on("change",function(){
		 
		 	let selectVal1 = $(this).find("option:selected").val();
		 	
		 	cateSelect2.children().remove();
		 	cateSelect3.children().remove();
		 	
		 	cateSelect2.append("<option value='none'>선택</option>");
		 	cateSelect3.append("<option value='none'>선택</option>");
		 	
		 	for(let i = 0; i< cate2Array.length; i++){
		 		if(selectVal1 === cate2Array[i].cate_parent){
		 			cateSelect2.append("<option value='"+cate2Array[i].cate_code+"'>" + cate2Array[i].cate_name +"</option>");
		 		}
		 	}// for
	 }); 
	 
	 /* 소분류 <option> 태그 */
	 $(cateSelect2).on("change",function(){
		
		 let selectVal2 = $(this).find("option:selected").val();
		 
		 cateSelect3.children().remove();
		 
		 cateSelect3.append("<option value='none'>선택</option>");
		 
		 for(let i = 0; i < cate3Array.length; i++){
			 if(selectVal2 === cate3Array[i].cate_parent){
				 cateSelect3.append("<option value='"+cate3Array[i].cate_code+"'>" + cate3Array[i].cate_name + "</option>");
			 }
		 }//for
		 
	 });
	 
	 /* 할인율 input 설정 */
	 $("#discount_interface").on("propertychange change keyup paste input", function(){
		 
		 let userInput = $("#discount_interface");
		 let discountInput = $("input[name='class_discount']");
		 
		 let discountRate = userInput.val();  			//사용자가 입력한 할인값
		 let sendDiscountRate = discountRate / 100; 		//서버에 전송할 할인값
		 let class_price = $("input[name='class_price']").val(); 		//원가
		 let discount_price = class_price * (1 - sendDiscountRate);		//할인가격
		 
		 $(".span_discount").html(discount_price);
		 discountInput.val(sendDiscountRate);
	 });
	 
    
</script>
 
</body>
</html>
