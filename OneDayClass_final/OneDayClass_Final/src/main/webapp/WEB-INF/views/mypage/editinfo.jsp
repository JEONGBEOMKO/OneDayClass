<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>onedayclass</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link  type="text/css" href="../resources/css/mypage/AA.css" rel="stylesheet" />
        <link rel="stylesheet" href="/resources/css/member/modify.css">
       <!--  <link href="../resources/css/SIGNUP.css" rel="stylesheet" /> -->
        <link href="../resources/css/re.css" rel="stylesheet" />
                 <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="./resources/css/mypage/bootstrap.min.css"/>

    <!-- Custom stylesheet -->
    <link type="text/css" rel="stylesheet" href="../resources/css/main.css"/>

    <!-- fontawesom -->
    <script src="https://kit.fontawesome.com/a1e0f49770.js" crossorigin="anonymous"></script>

    <!-- js -->
    <script src="../resources/js/main.js"></script>
    <script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous"></script>
	<script src="https://cdn.ckeditor.com/ckeditor5/31.0.0/classic/ckeditor.js"></script>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="../resources/js/scripts.js"></script>
</head>
<body>
    <!-- MAIN HEADER -->
    <div class="header">
    <div class="container">
        <div class="row">
            <!-- LOGO-->
            <div class="col-md-4">
                <div class="header-logo">
                    <a href="/main" class="logo">
                        <img src="../resources/img/Logo6.png" width="150">
                    </a>&emsp;&ensp;
                    <ul class="header-category">
                        <li class="active"><a href="#">클래스</a></li>&ensp;
                        <li><a href="#">스토어</a></li>
                    </ul>
                </div>
            </div>
            <!-- /LOGO -->

            <!-- SEARCH BAR-->
            <div class="col-md-5 col-xs-7">
                <div class="header-search">
                    <form>
                        <select class="input-select">
                            <option value="0">검색</option>
                            <option value="1">작가</option>
                            <option value="2">클래스</option>
                        </select>
                        <input class="input" placeholder="검색어를 입력해주세요">
                        <button class="search-btn"><i class="fas fa-search"></i></button>
                    </form>
                </div>
            </div>
            <!-- /SEARCH BAR -->

            <!-- ACCOUNT -->
            <div class="col-md-3 col-xs-5">
                <div class="account">
                    <ul class="account-section">
                        <li><a href="#">크리에이터</a></li>&emsp;
                        <li><a href="/member/logout.do">로그아웃</a></li>
                    </ul>
                </div>
            </div>
            <!-- /ACCOUNT -->
        </div>
    </div>
</div>





        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light">My Page</div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/mypage/myinfo">내정보</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/mypage/editinfo">개인정보수정</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/wish/${member.memberId}">위시리스트</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/cart/${member.memberId}">장바구니</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/order">주문내역</a>
                </div>
            </div>
        
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container-fluid">
                        <button class="btn" style="background-color : #FFCFCB"id="sidebarToggle">메뉴보기</button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item active"><a class="nav-link" href="#!"></a></li>
                                <!--<li class="nav-item"><a class="nav-link" href="#!">Link</a></li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#!">Action</a>
                                        <a class="dropdown-item" href="#!">Another action</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#!">Something else here</a>
                                    </div>
                                </li>-->
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container-fluid">
                    <center>
                    <h2 class="mt-4">나의 정보 수정하기</h2>
                    </center>
                    
            <div class="form_md">
             <form id="modifyForm"  action ="/mypage/memberModify" method="post">
            <div>
                <!--아이디,비번,비번재확인-->

                <h3>아이디</h3>
                <span class="signup-input"  style="cursor: default;">
                    <input class="id_input" name="memberId" id="signup-id" type="text" value ="<c:out value='${member.memberId}' />" disabled  style="cursor: default; background-color: #FFF;">
                    </input>
                    <span class="signup-at">  </span>
                </span>
                

                <h3>비밀번호</h3>
                <span class="signup-input">
                    <input class="pw_input" name="memberPw" id="signup-pw" type="password"></input>
                    <span class="pw-lock"></span>
                </span>

                <h3>비밀번호 재확인</h3>
                <span class="signup-input">
                    <input class="pwck_input" id="signup-pww" type="password"></input>
                    <span class="pww-lock"></span>
                </span>

            </div>

            <div style="margin-top: 20px;">
                <!--이름,생년월일,성별,이메일-->
                <h3>이름</h3>
                <span class="signup-input">
                    <input class="user_input" name="memberName" id="signup-name" type="text" value=""></input>
                </span>

            </div>

            <div style="margin-top: 20px;">
                <!--휴대전화-->
                <h3>이메일</h3>
                <span class="signup-input" style="width:100%; margin: 10px 0px 0px 0px">
                     <input class="mail_input" name="memberMail" value=""  id="signup-phone" type="text" ></input>
                </span>
             </div>
                    <!-- cnum-btn-wrap -->
            <!--         
                    <div class="mail_check_button"> 
                        <div class="cnum-btn">인증번호 받기</div> 
                    </div>
               
                </div>
                 
                
                <span class="signup-input-c" style="margin-top: 10px;">
                  <div class="mail_check_input_box" id="mail_check_input_box_false">
                    <input id="signup-cnum" class="mail_check_input" disabled= "disabled" type="text" placeholder="인증번호 입력하세요"></input>
               	  </div>
                </span>  
                  <div class="clearfix"></div>
                    <span id ="mail_check_input_box_warn"></span>
            </div> 
           -->
            <!--<div>
                가입하기
                <div class="signup-btn-wrap">
                    <button id="signup-btn">가입하기</button>
                </div>
            </div> -->

            <div style="margin-top: 20px;">
                <!--휴대전화-->
                <h3>주소</h3>
                <!--<span class="signup-input">
                    <select id="signup-country" class="selectbox" name="country" onchange="">
                        <option value="ko">대한민국 +82</option>
                    </select>
                </span>-->
                <div style="display: flex;">
                    <span class="signup-input" style="width:100%; margin: 10px 0px 0px 0px">
                        <input class="address_input_1" name="memberAddr1" id="signup-phone" type="text" placeholder="주소를 입력하세요"></input>
                    </span>
                    <div class="address_button" onclick="execution_daum_address()"><!-- 원래 span -->
                        <div class="cnum-btn">주소찾기</div>
                    </div>
                </div>
                
                
                <span class="signup-input-c" style="margin-top: 10px;">
                    <input class="address_input_2" name="memberAddr2" id="signup-cnum" type="text" placeholder="상세주소를 입력하세요"></input>
                </span>
            </div> 

            <div>
                <!--가입하기-->
                <div class="modify-btn-wrap">
                    <button class="modify_button" id="modify-btn">정보 수정</button>
                </div>
            </div>
		</form>
		</div>
                            
      </body>
    </html>
                          
                           
                       

                         
                                


                                   
                                    
                    
        

</body>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

let modifyForm = $("#modifyForm")

$(document).ready(function(){
	//회원정보 수정 버튼(화원정보 수정 기능 작동)
	$(".modify_button").click(function(){
		
		let memberName=$(".signup-input input[name='memberName']").val();
		
		modifyForm.submit();
		
		
		
	});
});
	
	
	/* 다음 주소 연동 */
	 function execution_daum_address(){
		
		new daum.Postcode({
			oncomplete: function(data) {
				
				
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수

	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }

	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                //주소변수 문자열과 참고항목 문자열 합치기
	                addr += extraAddr;
	            
	            } else {
	                addr += ' ';
	            }

	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            $(".address_input_1").val(data.zonecode);
	            //$("[name=memberAddr1]").val(data.zonecode); //대체가능
	            $(".address_input_2").val(addr);
	            //$("[name=memberAddr2]").val(addr);  //대체가능
	            //상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
	            /* $(".address_input_3").attr("readonly",false);
	            $(".address_input_3").focus();
	             */
				
				
				
			}
		}).open();
		
	    
	} 
	
	
	

</script>



</html>