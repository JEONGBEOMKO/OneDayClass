<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OneDayClass_Detail</title>
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="../resources/css/bootstrap.min.css"/>

    <!-- Custom stylesheet -->
    <link type="text/css" rel="stylesheet" href="../resources/css/main.css"/>
    
    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>

    <!-- fontawesom -->
    <script src="https://kit.fontawesome.com/a1e0f49770.js" crossorigin="anonymous"></script>
    
    <!-- js -->
    <script src="//js/main.js"></script>
    

</head>
<body>
    <!-- MAIN HEADER -->
    <div class="header">
        <div class="container">
            <div class="row">
                <!-- LOGO-->
                <div class="col-lg-4 col-md-4">
                    <div class="header-logo">
                        <a href="../main" class="logo">
                            <img src="../resources/img/Logo6.png" width="150">
                        </a>&emsp;&ensp;
                        <ul class="header-category">
                            <li class="active"><a href="main">클래스</a></li>&ensp;
                            <li><a href="#">스토어</a></li>
                        </ul>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR-->
                <div class="col-md-5 col-xs-7">
                    <div class="header-search">
                        <form id="searchForm" action="/search" method="get">
                          <div class="search_input">
                              <select name="type" class="input-select">
                              	  <option selected value="0" disabled>검색</option>
                                  <option value="T">클래스</option>
                                  <option value="C">크리에이터</option>
                               </select>
                               <input type="text" name="keyword" class="input" placeholder="검색어를 입력해주세요">
                                <button class="search-btn"><i class="fas fa-search"></i></button>                            
                            </div>
                         </form>

                    </div>
                </div>
                <!-- /SEARCH BAR -->

                <!-- ACCOUNT -->
                <div class="col-md-3 col-xs-5">
                    <div class="account">
                        <ul class="account-section">
                        <c:if test="${member ==null }">
                            <li><a href="#">회원가입</a></li>&emsp;
                            <li><a href="/member/login">로그인</a></li>
                        </c:if>
                        
                        <c:if test="${member != null }">
                            <!-- <li><a href="#">회원가입</a></li>&emsp; -->
                            <li><a href="/member/logout.do">로그아웃</a></li>
                        </c:if>
                        </ul>
                    </div>
                </div>
                <!-- /ACCOUNT -->
            </div>
        </div>
    </div>
    <!-- /MAIN HEADER -->

    <!-- NAVIGATION -->
    <div class="navigation">
        <div class="container">
            <div class="responsive-nav">
                <ul class="main-nav nav navbar-nav">
                    <li class="active"><a href="/category?c=0">전체 카테고리</a></li>
                    <li class="category">
                        <a href="/category?c=1000">크리에이티브</a>
                        <ul>
                            <li><a href="/category?c=1100">드로잉</a>
                                <ul>
                                    <li><a href="/category?c=1101">펜/연필</a></li>
                                    <li><a href="/category?c=1102">마카</a></li>
                                    <li><a href="/category?c=1103">색연필</a></li>
                                </ul>
                            </li>
                            <li><a href="/category?c=1200">음악</a>
                                <ul>
                                    <li><a href="/category?c=1201">악기</a></li>
                                    <li><a href="/category?c=1202">보컬</a></li>
                                    <li><a href="/category?c=1203">작곡</a></li>
                                </ul>
                            </li>
                            <li><a href="/category?c=1300">베이킹</a>
                                <ul>
                                    <li><a href="/category?c=1301">케이크</a></li>
                                    <li><a href="/category?c=1302">제과</a></li>
                                    <li><a href="/category?c=1303">제빵</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="category">
                        <a href="/category?c=2000">커리어</a>
                        <ul>
                            <li><a href="/category?c=2100">개발</a>
                                <ul>
                                    <li><a href="/category?c=2101">Web/프론트엔드</a></li>
                                    <li><a href="/category?c=2102">서버/백엔드</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>

	           	<div class="main-account">
	                 <ul>
	                 	<c:if test="${member ==null }">
   		                	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		                    <li><a href="/class/class_total">크리에이터</a></li>
	                 	</c:if>
	                 
	                 	<c:if test="${member != null }">
		                	<li><a href="/cart/${member.memberId}"><i class="fa fa-shopping-cart"></i></a></li>&emsp;
		                    <li><a href="/mypage/myinfo">MY</a></li>&emsp;
		                    <li><a href="/class/class_total">크리에이터</a></li>
	                    </c:if>
	                </ul>
	            </div>
            </div>
        </div>
    </div>
    <!-- /NAVIGATION -->

    <!-- DETAIL-->
    <div class="detail">
        <div class="container">
            <div class="col-md-12">
                <div class="detail_img">
                    <img src="${pageContext.request.contextPath}/resources/upload/${classInfo.class_img1_filename}" alt="">
                    <img src="${pageContext.request.contextPath}/resources/upload/${classInfo.class_img2_filename}" alt="">
                    <img src="${pageContext.request.contextPath}/resources/upload/${classInfo.class_img3_filename}" alt="">
                </div>
            </div>
        </div>

        <!-- DESCRIPTION -->
        <div class="description">
            <div class="container">
                <div class="col-md-9">
                    <!-- SEMI-NAV -->
                    <nav class="semi-nav" id="semi-nav">
                        <ul class="semi-navbar">
                            <li><a href="#introduction">클래스 소개</a></li>
                            <li><a href="#review">후기</a></li>
                            <li><a href="#curriculum">커리큘럼</a></li>
                            <li><a href="#kit">키트 소개</a></li>
                            <li><a href="#creator">크리에이터</a></li>
                        </ul>
                    </nav>
                    <!-- /SEMI-NAV -->

                    <!-- CLASS INTRODUCTION -->
                    <div class="introduction">
                        <p id="introduction-short">
                            <div class="intro-title">클래스 정보</div>
                            <div class="intro-box">
                                <div class="intro-semi">수강 가능일</div>
                                <div class="intro-des">바로 수강 가능</div>
                            </div>
                            <div class="intro-box">
                                <div class="intro-semi">자막 포함 여부</div>
                                <div class="intro-des">포함</div>
                            </div><hr>
                        </p>

                        <p id="introduction"><br></p>
                        <div class="semi-title">
                            <h2><font color="#98B6EC">${classInfo.class_level}</font>분들을 위한 <br><font color="#98B6EC">${classInfo.class_brief}</font><br>클래스입니다.</h2>
                        </div><br>
                        <!-- INFO-BRIEF -->
                        <div class="info-brief">
                            <i class="far fa-calendar-alt"></i>
                            <h3>20주 수강 가능</h3>
                            <div class="info-brief-des">
                                수강기간 내 무제한 수강 가능합니다
                            </div>
                        </div>
                        <div class="info-brief">
                            <i class="fas fa-clipboard-list"></i>
                            <h3>16개의 콘텐츠</h3>
                            <div class="info-brief-des">
                                총 16개의 강의를 수강하실 수 있습니다
                            </div>
                        </div>
                        <p><br></p>

                        <!-- INFO -->
                        <div class="info">
                            <div class="info-total">
                                <h3>클래스 소개 1</h3>
                                <img src="${pageContext.request.contextPath}/resources/upload/${classInfo.class_img1_filename}" alt="">
                                <div class="info-des">
                                    ${classInfo.class_info1}
                                </div>
                            </div><br>
                            <div class="info-total">
                                <h3>클래스 소개 2</h3>
                                <img src="${pageContext.request.contextPath}/resources/upload/${classInfo.class_img2_filename}" alt="">
                                <div class="info-des">
                                    ${classInfo.class_info2}
                                </div>
                            </div><br>
                            <div class="info-total">
                                <h3>클래스 소개 3</h3>
                                <img src="${pageContext.request.contextPath}/resources/upload/${classInfo.class_img3_filename}" alt="">
                                <div class="info-des">
                                    ${classInfo.class_info3}
                                </div>
                            </div><br>
                        </div>
                        <!-- /INFO -->
                    </div><br>
                    <!-- /CLASS INTRODUCTION -->

                    <!-- REVIEWS -->
                    <div class="review">
                        <p id="review"><br></p>
                        <div class="semi-title">
                            <h2>실제 수강생 후기</h2>
                        </div>
                        <!-- INFO-STAR -->
                        <div class="info-star">
                            <i class="fa fa-star"></i>
                            <h3>4.8/5.0</h3>
                            <div class="info-count">
                                &emsp;총 28개
                            </div>
                        </div><p></p>
                        <!-- /INFO-STAR -->

						<!-- REVIEW WRITE -->
						
                        <div class="review-write">
                            <div class="user-profile">
                                <img src="../resources/img/person.png">
                            </div>

                                <div class="user-info">
                                   <span class="user-name">${member.memberName}</span>&ensp;
                                    <span class="user-date">2021.12.27</span><br>
                             <div class="info-star">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </div>
                                <c:if test="${member != null }">
                                <div class="review-button">
                                    <button type="submit" class="btn_review">후기 작성하기</button>
                                </div>
                                </c:if>
                     <form name="replyForm" method="post">
                                <div class="review-box">
                                    <input type="hidden" id="class_id" name="class_id" value="${classInfo.class_id}"/>
                             <input type="hidden" id="memberId" name="memberId" value="${member.memberId}"/>
                             <textarea id="reply_memo" name="reply_memo" placeholder="리뷰를 작성해주세요" cols="30" rows="10"></textarea>
                                </div>
                            </form> 
                        </div><hr>
                        
                        <!-- /REVIEW WRITE -->

                        <!-- REVIEW -->
                        <c:forEach items="${replyList}" var="replyList">
                        <div class="review-container">
                            <div class="user-profile">
                                <img src="../resources/img/person.png">
                            </div>
                                <div class="user-info">
                                    <span class="user-name">${replyList.memberName}</span>&ensp;
                                    <span class="user-date"><fmt:formatDate pattern="yyyy.MM.dd" value="${replyList.reply_date}"/></span><br>
                                    <div class="info-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <div class="review-button2">
                                    <button type="button" class="btn_edit">수정</button>
                                    <form action="/replyDelete" method="post" class="reply_delete_form">
                                     <button type="button" class="btn_reply_delete" data-reply_id="${replyList.reply_id}">삭제</button>
                                     <input type="hidden" name="reply_memo" value="${replyList.reply_memo}">
                                     <input type="hidden" name="class_id" value="${replyList.class_id}">
                                     <input type="hidden" name="reply_id" class="reply_delete" value="${replyList.reply_id}">
                                     <input type="hidden" name="memberId" value="${member.memberId}">
                                  </form>
                                </div>
                                <div class="review-box2">
                                    ${replyList.reply_memo}   
                              </div>
                        </div>
                        </c:forEach>
                        <!-- /REVIEW -->
                    </div><br>
                    <!-- /REVIEWS -->

                    <!-- CURRICULUM -->
                    <div class="curriculum">
                        <p id="curriculum"><br></p>
                        <div class="semi-title">
                            <h2>커리큘럼</h2>
                        </div>
                        <div class="chapter">
                            <div class="chapter-title">
                                01&ensp; ${classInfo.class_curriculum1}
                            </div>
                            <ul class="chapter-detail">
                                <li><a href="#">① 추후 업데이트 예정</a></li>
                                <li><a href="#">② 추후 업데이트 예정</a></li>
                                <li><a href="#">③ 추후 업데이트 예정</a></li>
                                <li><a href="#">④ 추후 업데이트 예정</a></li>
                            </ul>
                        </div>
                        <div class="chapter">
                            <div class="chapter-title">
                                02&ensp; ${classInfo.class_curriculum2}
                            </div>
                            <ul class="chapter-detail">
                                <li><a href="#">① 추후 업데이트 예정</a></li>
                                <li><a href="#">② 추후 업데이트 예정</a></li>
                                <li><a href="#">③ 추후 업데이트 예정</a></li>
                                <li><a href="#">④ 추후 업데이트 예정</a></li>
                            </ul>
                        </div>
                        <div class="chapter">
                            <div class="chapter-title">
                                03&ensp; ${classInfo.class_curriculum3}
                            </div>
                            <ul class="chapter-detail">
                                <li><a href="#">① 추후 업데이트 예정</a></li>
                                <li><a href="#">② 추후 업데이트 예정</a></li>
                                <li><a href="#">③ 추후 업데이트 예정</a></li>
                                <li><a href="#">④ 추후 업데이트 예정</a></li>
                            </ul>
                        </div>
                        <div class="chapter">
                            <div class="chapter-title">
                                04&ensp; ${classInfo.class_curriculum4}
                            </div>
                            <ul class="chapter-detail">
                                <li><a href="#">① 추후 업데이트 예정</a></li>
                                <li><a href="#">② 추후 업데이트 예정</a></li>
                                <li><a href="#">③ 추후 업데이트 예정</a></li>
                                <li><a href="#">④ 추후 업데이트 예정</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /CURRICULUM -->

                    <!-- KIT -->
                    <div class="kit">
                        <p id="kit"><br></p>
                        <div class="semi-title">
                            <h2>키트 소개</h2>
                        </div>
                        <div class="kit-address">
                            <div class="kit-title">올인원 키트</div>
                            <div class="kit-info">
                                <img src="${pageContext.request.contextPath}/resources/upload/${classInfo.tool_filename}" alt=""><br>
                                강의에 필요한 모든 재료와 도구가 포함된 키트입니다.<br>
                                재료와 도구를 스토어에서 간편하게 준비해보세요.
                            </div>
                            <div class="kit-alink">
                                <a href="#"><i class="fas fa-arrow-right"></i>&ensp;스토어로 이동하기</a>
                            </div>
                        </div>

                    </div>
                    <!-- /KIT -->

                    <!-- CREATOR -->
                    <div class="creator">
                        <p id="creator"><br></p>
                        <div class="creator-title">
                            <div class="semi-title2">
                                <h2>크리에이터<br><font color="#98B6EC">${classInfo.creator_name} 작가</font> 입니다</h2>
                            </div>
                            <div class="creator-sns">
                                <a href=""><i class="fab fa-youtube"></i>${classInfo.creator_sns1}</a>
                                <a href=""><i class="fab fa-instagram"></i>${classInfo.creator_sns2}</a>
                                <a href=""><i class="fab fa-twitter"></i>${classInfo.creator_sns3}</a>
                            </div>
                        </div>
                        <div class="creator-profile">
                            <img src="${pageContext.request.contextPath}/resources/upload/${classInfo.creator_profile_filename}" alt="">
                        </div>
                        <hr>
                        <div class="creator-info">
                            ${classInfo.creator_info}
                        </div>
                    </div>
                    <p><br><br><br><br><br><br><br></p>
                    <!-- /CREATOR -->
                </div>

                <div class="col-md-3">
                    <div class="detail-widget" id="detail-widget">
                        <div class="class-sum">
                            <div class="class-category">
                                ${classCate1.cate_name} · ${classCate2.cate_name} · ${classInfo.cate_name}
                            </div>
                            <div class="class-title">
                                [${classInfo.class_tag}]<br>${classInfo.class_name}
                            </div>
                            <div class="class-sub">
                                <span>바로 수강 가능</span>
                                <span>자막 포함</span>
                            </div>
                        </div>
                        <div class="class-price">
                        	<c:if test="${classInfo.class_discount != 0}">
                            <del>월 <fmt:formatNumber value="${classInfo.class_price}" pattern="#,###원"/></del><br>
                            <font><fmt:parseNumber var="class_discount" value="${classInfo.class_discount }" integerOnly="true" />${class_discount}%</font>
                            </c:if>
                            월 <fmt:formatNumber value="${classInfo.class_price*(1 - (classInfo.class_discount/100))}" pattern="#,###원"/>
                        </div><hr>
                        <div class="class-infos">
                            <div class="class-info">
                                <i class="far fa-caret-square-right"></i> 콘텐츠 이용권
                            </div>
                            <div class="class-info">
                                <i class="fas fa-gift"></i> 준비물 키트<br>
                            </div>
                            <div class="class-info">
                                <i class="far fa-user"></i> ${classInfo.class_level} 대상
                            </div>
                            <div class="class-info">
                                <i class="fas fa-laptop"></i> 모든 디바이스
                            </div>
                        </div><hr>
                        <div class="class-add">
                           	<input type="hidden" class="quantity input_wish" value="1">
                            <button type="button" id="btn_add2" class="btn_add"><font><i class="far fa-heart"></i></font> 찜하기</button>
                            <input type="hidden" class="quantity input" value="1">
                            <button type="button" id="btn_add1" class="btn_add"><i class="fas fa-shopping-cart"></i> 장바구니</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /DESCRIPTION -->
    </div>

    <!-- /DETAIL -->


    <!-- FOOTER -->
    <footer id="footer">
        <!-- top footer -->
        <div class="footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer">
                            <h3 class="footer-title">About Us</h3>
                            <p>비트캠프 디지털컨버전스 기반 딥러닝 학습을 이용한 웹 개발자 양성과정 A / 팀: WITH CLASS</p>
                            <!-- <ul class="footer-links">
                                <li><a href="#"><i class="fa fa-map-marker"></i>1734 Stonecoal Road</a></li>&emsp;
                                <li><a href="#"><i class="fa fa-phone"></i>02-123-4567</a></li>&emsp;
                                <li><a href="#"><i class="fa fa-envelope-o"></i>bit@camp.com</a></li>
                            </ul> -->
                        </div>
                        <div class="footer">
                            <h3 class="footer-title">Information</h3>
                            <ul class="footer-links">
                                <li><a href="#">About Us</a></li>&emsp;
                                <li><a href="#">Contact Us</a></li>&emsp;
                                <li><a href="#">Privacy Policy</a></li>&emsp;
                                <li><a href="#">Orders and Returns</a></li>&emsp;
                                <li><a href="#">Terms & Conditions</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /top footer -->

        <!-- bottom footer -->
        <div id="bottom-footer" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <ul class="footer-payments">
                            <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                            <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                        </ul>
                        <span class="copyright">
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made by <a href="https://colorlib.com" target="_blank">team WITH CLASS </a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <!-- /bottom footer -->
    </footer>
    <!-- /FOOTER -->
    
    
<script>
// 수량 버튼 조작
let quantity = $(".quantity_input").val();
$(".plus_btn").on("click", function(){
   $(".quantity_input").val(++quantity);
});
$(".minus_btn").on("click", function(){
   if(quantity > 1){
      $(".quantity_input").val(--quantity);   
   }
});

//서버로 전송할 데이터
const form = {
      memberId : '${member.memberId}',
      class_id : '${classInfo.class_id}',
      class_count : ''
}

//장바구니 추가 버튼
$("#btn_add1").on("click", function(e){
   form.class_count = $(".quantity_input").val();
   $.ajax({
      url: '/cart/add',
      type: 'POST',
      data: form,
      success: function(result){
         cartAlert(result);
      }
   })
});

function cartAlert(result){
   if(result == '0'){
      alert("장바구니에 추가를 하지 못하였습니다.");
   } else if(result == '1'){
      alert("장바구니에 추가되었습니다.");
   } else if(result == '2'){
      alert("장바구니에 이미 추가되어져 있습니다.");
   } else if(result == '5'){
      alert("로그인이 필요합니다.");   
   }
}


//서버로 전송할 데이터
const form1 = {
      memberId : '${member.memberId}',
      class_id : '${classInfo.class_id}',
}

//위시리스트 추가 버튼
$("#btn_add2").on("click", function(e){
   $.ajax({
      url: '/wish/add',
      type: 'POST',
      data: form1,
      success: function(result1){
         wishAlert(result1);
      }
   })
});


function wishAlert(result1){
   if(result1 == '0'){
      alert("위시리스트에 추가를 하지 못하였습니다.");
   } else if(result1 == '1'){
      alert("위시리스트에 추가되었습니다.");
   } else if(result1 == '2'){
      alert("위시리스트에 이미 추가되어져 있습니다.");
   } else if(result1 == '5'){
      alert("로그인이 필요합니다.");   
   }
}

$(".btn_review").on("click", function(){
    var formObj = $("form[name='replyForm']");
    formObj.attr("action", "/replyWrite");
    formObj.submit();
  });
  
/* 댓글 삭제 버튼 */
$(".btn_reply_delete").on("click", function(){
   let reply_id = $(this).data("reply_id");

   $(".reply_delete").val(reply_id);

   $(".reply_delete_form").submit();
   
});
   

</script>



</body>
</html>