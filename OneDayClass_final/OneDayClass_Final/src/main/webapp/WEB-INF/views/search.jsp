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
    <title>OneDayClass_Search</title>
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.min.css"/>

    <!-- Custom stylesheet -->
    <link type="text/css" rel="stylesheet" href="resources/css/main.css"/>

    <!-- fontawesom -->
    <script src="https://kit.fontawesome.com/a1e0f49770.js" crossorigin="anonymous"></script>
    
    <!-- js -->
    <script src="//js/main.js"></script>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

</head>
<body>
    <!-- MAIN HEADER -->
    <div class="header">
        <div class="container">
            <div class="row">
                <!-- LOGO-->
                <div class="col-lg-4 col-md-4">
                    <div class="header-logo">
                        <a href="main" class="logo">
                            <img src="resources/img/Logo6.png" width="150">
                        </a>&emsp;&ensp;
                        <ul class="header-category">
                            <li class="active"><a href="main">클래스</a></li>&ensp;
                            <li><a href="#">스토어</a></li>
                        </ul>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR-->
                <div class="col-lg-5 col-md-5">
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

    <!-- NEW PRODUCT -->
    <div class="section">
        <div class="container">
            <div class="row">
                
                <!-- SECTION TITLE -->
                <div class="col-md-12">
                    <div class="section-title">
                        <h3 class="title">검색 결과: </h3><span style="font-weight:600; text-transform: uppercase;">&ensp;${keyword}</span>
                        <!-- <div class="section-semi"> 제과 </div> -->
                    </div>
                </div>
                <!-- /SECTION TITLE -->

                <!-- PRODUCTS -->
                <div class="col-md-12">
                    <div class="row">
                        <div class="products-tabs">
                            <div id="tab1" class="tab-pane active">
                                <div class="products-slick" data-nav="#slick-nav-1">
                                    <!-- <button class="btn_prd"> <i class="fas fa-chevron-left"></i></button> -->
                                    <!-- product -->
                                    <div class="products">
			<c:forEach items="${list}" var="list">
                                    <div class="product">
                                        <a href="/detail/${list.class_id}">
                                            <div class="product-img">
                                                <img src="${pageContext.request.contextPath}/resources/upload/${list.class_thumb_filename}" alt="" height="200px">
                                                <div class="product-select">
                                                    <span class="prd">${list.cate_name}</span>
                                                </div>
                                                <div class="product-label">
                                                    <span class="new">${list.class_tag}</span><br>
                                                    <span class="sale"><fmt:parseNumber var="class_discount" value="${list.class_discount }" integerOnly="true" />${class_discount}%</span>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">${list.creator_name}</p>
                                                <h3 class="product-name"><a href="/detail/${list.class_id}">${list.class_name}</a></h3>
                                                <h4 class="product-price">월 <fmt:formatNumber value="${list.class_price*(1 - (list.class_discount/100))}" pattern="#,###원"/>
                                                <c:if test="${list.class_discount != 0}">
                                       	        	<del class="product-old-price">월 ${list.class_price}원</del></h4>
                                                </c:if>
                                                <c:if test="${list.class_discount == 0}">
                                       	        	<del style="display:none;" class="product-old-price">월 ${list.class_price}원</del></h4>
                                                </c:if>
                                                <div class="product-rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="product-btns">
                                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                    <button class="add-to-cart"><i class="fa fa-shopping-cart"></i><span class="tooltipp">add to cart</span></button>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
			</c:forEach>
                                    <!-- /product -->
                            		<c:if test="${listcheck == 'empty'}">
										<div class="table_empty">
											검색결과가 없습니다.
										</div>
									</c:if>
									</div>
                                    <!-- <button class="btn_prd"><i class="fas fa-chevron-right"></i></button> -->
                                </div>
                                <div id="slick-nav-1" class="products-slick-nav"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /PRODUCTS -->
            </div>
        </div>
    </div>
    <!-- NEW PRODUCT -->

<!-- 페이지 이동 인터페이스 -->
	<div class="pageMaker_wrap">
		<ul class="pageMaker">
              			
			<!-- 이전 버튼 -->
			<c:if test="${pageMaker.prev }">
             			<li class="pageMaker_btn prev">
             				<a href="${pageMaker.pageStart -1}">이전</a>
             			</li>
			</c:if>
             			
             		<!-- 페이지 번호 -->
             		<c:forEach begin="${pageMaker.pageStart }" end="${pageMaker.pageEnd }" var="num">
             			<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active2':''}">
             				<a href="${num}">${num}</a>
             			</li>	
             		</c:forEach>
             		
                 	<!-- 다음 버튼 -->
                 	<c:if test="${pageMaker.next}">
                 		<li class="pageMaker_btn next">
                 			<a href="${pageMaker.pageEnd + 1 }">다음</a>
                 		</li>
                 	</c:if>
		</ul>
	</div>
	
	<form id="moveForm" action="/search" method="get" >
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
		<input type="hidden" name="type" value="${pageMaker.cri.type}">
	</form>
				
			
			<!-- 게시물 x -->

		</div>

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
let moveForm = $('#moveForm');

/* 페이지 이동 버튼 */
$(".pageMaker_btn a").on("click", function(e){
    
    e.preventDefault();
    
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    
    moveForm.submit();
});    

let searchForm = $('#searchForm');

/* 작거 검색 버튼 동작 */
$("#searchForm button").on("click", function(e){
   
   e.preventDefault();
   
   /* 검색 키워드 유효성 검사 */
   if(!searchForm.find("input[name='keyword']").val()){
      alert("키워드를 입력하십시오");
      return false;
   }
   
   searchForm.find("input[name='pageNum']").val("1");
   
   searchForm.submit();
   
});
    
</script>

</body>
</html>