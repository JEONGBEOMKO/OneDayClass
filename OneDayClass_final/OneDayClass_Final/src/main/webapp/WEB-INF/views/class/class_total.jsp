<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Class_Total</title>
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Custom stylesheet -->
    <link type="text/css" rel="stylesheet" href="/resources/css/creator.css"/>
    
    <script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous"></script>
	<script src="https://cdn.ckeditor.com/ckeditor5/31.0.0/classic/ckeditor.js"></script>

    <!-- fontawesom -->
    <script src="https://kit.fontawesome.com/a1e0f49770.js" crossorigin="anonymous"></script>
    
    <!-- js -->
    <script src="../resources/js/main.js"></script>
    
    

</head>
<body>
    <!-- MAIN HEADER -->
    <div class="header">
        <div class="container">
            <div class="row">
                <!-- LOGO-->
                <div class="col-md-10">
                    <div class="header-logo">
                        <a href="../main" class="logo">
                            <img src="/resources/img/Logo6.png" width="150" style="margin-top: -15px;">
                        </a>&emsp;&ensp;
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- ACCOUNT -->
                <div class="col-md-2">
                    <div class="account">
                        <ul class="account-section">
                            <li><a href="class_total">크리에이터</a></li>&emsp;
                        </ul>
                    </div>
                </div>
                <!-- /ACCOUNT -->
            </div>
            <!-- PROGRESS BAR -->
            <div class="progress" style="height: 5px;">
                <div class="progress-bar" role="progressbar" style="width: 0%; background-color: #98B6EC;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <!-- /PROGRESS BAR -->
        </div>
    </div>
    <!-- /MAIN HEADER -->

    <!-- REGISTRATION -->
    <div class="registration">
        <div class="container">
            <div class="col-md-3">
                <ul class="nav flex-column">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="#class_basic">① 기본정보</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#class_title">② 제목 및 커버</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#class_info">③ 클래스 소개</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#class_curriculum">④ 커리큘럼</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#class_creator">⑤ 크리에이터 소개</a>
                    </li>
                </ul>
            </div>

            <div class="col-md-9">
                <!-- FORM 위치 -->
                <form method="post" enctype="multipart/form-data" action="/class/class_total" id="enrollForm">
                    <!-- CATEGORY -->
                    <div class="container" id="class_basic">
                        <div class="regis-index">
                            <h1>① 기본정보</h1>
                        </div>
                        <div class="regis_title">
                            <h2>클래스의 카테고리를 선택해주세요</h2>
                        </div>
                        <div class="regis-box">
                            <select id="input-select" class="cate1">
                                <option selected value="none" disabled>카테고리를 선택해주세요.</option>
                            </select>
                            <p></p>
                            <select id="input-select" class="cate2">
                                <option selected value="none" disabled>카테고리를 선택해주세요.</option>
                            </select>
                            <p></p>
                            <select id="input-select" class="cate3" name="cate_code">
                                <option selected value="none" disabled>카테고리를 선택해주세요.</option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <!-- /CATEGORY -->

                    <!-- LEVEL -->
                    <div class="container">
                        <div class="regis_title">
                            <h2>클래스 난이도를 선택해주세요</h2>
                        </div>
                        <div class="regis-box">
                            <select id="input-select" name="class_level">
                                <option value="level" selected disabled>난이도를 선택해주세요.</option>
                                <option value="입문자">입문자</option>
                                <option value="초급자">초급자</option>
                                <option value="중급자">중급자</option>
                                <option value="전문가">전문가</option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <!-- /LEVEL -->

                    <!-- PRICE -->
                    <div class="container">
                        <div class="regis-title">
                            <h2>수강료를 입력해주세요</h2>
                        </div>
                        <div class="regis-box">
                            <h3>수강료</h3>
                            <input class="input" name="class_price" placeholder="수강료를 월 단위로 입력해주세요"><br>
                            <h3>할인율</h3>
                            <input class="input" name="class_discount" placeholder="할인율을 % 없이 입력해주세요"><br>
                        </div>
                    </div>
                    <!-- /PRICE -->

                    <!-- TITLE -->
                    <div class="container" id="class_title">
                        <div class="regis-index">
                            <h1>② 제목 및 커버</h1>
                        </div>
                        <div class="regis_title">
                            <h2>클래스 제목을 입력해주세요</h2>
                        </div>
                        <div class="regis-box">
                            <input class="input" name="class_name" placeholder="클래스 제목을 입력해주세요"><br>
                        </div>
                    </div>
                    <br>
                    <!-- /TITLE -->

                    <!-- BRIEF INFO -->
                    <div class="container">
                        <div class="regis_title">
                            <h2>클래스를 짧게 요약해주세요</h2>
                        </div>
                        <div class="regis-box">
                            &nbsp;이 강의는 <input class="input3" name="class_brief" placeholder="명사형으로 입력해주세요"> 클래스 입니다<br>
                        </div>
                    </div>
                    <br>
                    <!-- /BRIEF INFO -->

                    <!-- THUMBNAIL -->
                    <div class="container">
                        <div class="regis_title">
                            <h2>썸네일 이미지를 올려주세요</h2>
                        </div>
                        <div class="regis-box">
                            <div id="preview" >이미지 미리보기</div>
                            <label for="file" class="btn_basic">파일 업로드</label>
                            <input type="file" name="class_thumb_uploadpath" id="file" onchange="handleFileSelect(event)" accept="image/*"> <br>
                        </div>
                    </div>
                    <!-- /THUMBNAIL -->

                    <!-- INFO -->
                    <div class="container" id="class_info">
                        <div class="regis-index">
                            <h1>③ 클래스 소개</h1>
                        </div>
                        <div class="regis_title">
                            <h2>클래스를 통해 무엇을 알려주실 수 있나요</h2>
                        </div>
                        <div class="regis-box2">
                            <div id="preview1" >이미지 미리보기</div>
                            <label for="file1" class="btn_basic">파일 업로드</label>&emsp;
                            <input type="file" name="class_img1_uploadpath" class="file1" id="file1" onchange="handleFileSelect1(event)" accept="image/*">
                            <button type="reset" class="btn_basic" onclick="resetAll1();">파일 취소</button> <br>
                            <textarea type="textarea" name="class_info1" class="text" placeholder="설명을 입력해주세요"></textarea>
                        </div>
                        <div class="regis-box2">
                            <div id="preview2" >이미지 미리보기</div>
                            <label for="file2" class="btn_basic">파일 업로드</label>&emsp;
                            <input type="file" name="class_img2_uploadpath" class="file2" id="file2" onchange="handleFileSelect2(event)" accept="image/*">
                            <button type="reset" class="btn_basic" onclick="resetAll2();">파일 취소</button> <br>
                            <textarea type="textarea" name="class_info2" class="text" placeholder="설명을 입력해주세요"></textarea>
                        </div>
                        <div class="regis-box2">
                            <div id="preview3" >이미지 미리보기</div>
                            <label for="file3" class="btn_basic">파일 업로드</label>&emsp;
                            <input type="file" name="class_img3_uploadpath" class="file3" id="file3" onchange="handleFileSelect3(event)" accept="image/*">
                            <button type="reset" class="btn_basic" onclick="resetAll3();">파일 취소</button> <br>
                            <textarea type="textarea" name="class_info3" class="text" placeholder="설명을 입력해주세요"></textarea>
                        </div>
                    </div>
                    <!-- /INFO -->

                    <!-- CURRICULUM -->
                    <div class="container" id="class_curriculum">
                        <div class="regis-index">
                            <h1>④ 커리큘럼</h1>
                        </div>
                        <div class="regis_title">
                            <h2>커리큘럼을 입력해주세요</h2>
                        </div>
                        <div class="regis-box">
                            <input class="input" name="class_curriculum1" placeholder="커리큘럼1을 입력해주세요"><br>
                            <input class="input" name="class_curriculum2" placeholder="커리큘럼2을 입력해주세요"><br>
                            <input class="input" name="class_curriculum3" placeholder="커리큘럼3을 입력해주세요"><br>
                            <input class="input" name="class_curriculum4" placeholder="커리큘럼4을 입력해주세요"><br>
                        </div>
                    </div>
                    <!-- /CURRICULUM -->

                    <!-- CREATOR -->
                    <div class="container" id="class_creator">
                        <div class="regis-index">
                            <h1>⑤ 크리에이터 소개</h1>
                        </div>
                        <div class="regis_title">
                            <h2>본인을 소개하고 활동중인 SNS를 알려주세요</h2>
                        </div>
                        <div class="regis-box">
                            <h3>크리에이터 프로필</h3>
                                <div id="preview_profile" ></div>
                                <label for="file4" class="btn_basic">파일 업로드</label>
                                <input type="file" name="creator_profile_uploadpath" class="file4" id="file4" onchange="handleFileSelect4(event)" accept="image/*"> <br><p></p>
                            <h3>크리에이터 닉네임</h3>
                            <input class="input" name="creator_name" placeholder="닉네임을 입력해주세요"><br><p></p>
                            <h3>연락처</h3>
                            <input class="input" name="creator_phone" placeholder="010-1111-2222 형식으로 입력해주세요"><br><p></p>
                            <h3>활동중인 SNS</h3>
                            <div class="sns-box">
                                <i class="fab fa-youtube"></i><input class="input2" name="creator_sns1" placeholder="SNS주소를 입력해주세요"><br>
                                <i class="fab fa-instagram"></i> <input class="input2" name="creator_sns2" placeholder="SNS주소를 입력해주세요"><br>
                                <i class="fab fa-twitter"></i> <input class="input2" name="creator_sns3" placeholder="SNS주소를 입력해주세요"><br>
                            </div><p></p>
                            <h3>크리에이터 소개</h3>
                            <textarea type="textarea" class="text1" name="creator_info" placeholder="크리에이터 소개를 입력해주세요"></textarea>
                        </div>
                    </div>
                    <br>
                    <!-- /CREATOR -->
                </form>

                <!-- NEXT -->
                <div class="pagination">
                    <a href="#"><button type="button" class="btn_next" id="enrollBtn" value="next">등록</a>
                    <!-- <a class="btn_next" href="class_title.html" role="button">다음</a> -->
                </div>
                <!-- /NEXT -->
            </div>
        </div>
    </div>
    <!-- /REGISTRATION -->

</body>
    
    <script>
    
    $(document).ready(function(){
    	console.log('${cateList}');
    });
    
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
		 $(cateSelect1).on("change", function(){
			 
			 	let selectVal1 = $(this).find("option:selected").val();
			 	
			 	cateSelect2.children().remove();
			 	cateSelect3.children().remove();
			 	
			 	cateSelect2.append("<option value='none'>카테고리를 선택해주세요</option>");
			 	cateSelect3.append("<option value='none'>카테고리를 선택해주세요</option>");
			 	
			 	for(let i = 0; i< cate2Array.length; i++){
			 		if(selectVal1 === cate2Array[i].cate_parent){
			 			cateSelect2.append("<option value='"+cate2Array[i].cate_code+"'>" + cate2Array[i].cate_name +"</option>");
			 		}
			 	}// for
		 }); 
		 
		 /* 소분류 <option> 태그 */
		 $(cateSelect2).on("change", function(){
			
			 let selectVal2 = $(this).find("option:selected").val();
			 
			 cateSelect3.children().remove();
			 
			 cateSelect3.append("<option value='none'>카테고리를 선택해주세요</option>");
			 
			 for(let i = 0; i < cate3Array.length; i++){
				 if(selectVal2 === cate3Array[i].cate_parent){
					 cateSelect3.append("<option value='"+cate3Array[i].cate_code+"'>" + cate3Array[i].cate_name + "</option>");
				 }
			 }//for
			 
		 });
		 

		let enrollForm = $("#enrollForm")

		/* 상품 등록 버튼 */
		$("#enrollBtn").on("click",function(e){
			
			e.preventDefault();
			
			enrollForm.submit();
			
		});
		 
    
    </script>

</html>