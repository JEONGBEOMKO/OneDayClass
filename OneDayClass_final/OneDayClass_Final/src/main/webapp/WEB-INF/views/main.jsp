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
    <title>OneDayClass_Main</title>
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="resources/css/bootstrap.min.css"/>

    <!-- Custom stylesheet -->
    <link type="text/css" rel="stylesheet" href="resources/css/main.css"/>
    
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
                <div class="col-md-4">
                    <div class="header-logo">
                        <a href="main" class="logo">
                            <img src="resources/img/Logo6.png" width="150">
                        </a>&emsp;&emsp;
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
                            <li><a href="/member/join">회원가입</a></li>&emsp;
                            <li><a href="/member/login">로그인</a></li>
                        </c:if>
                        
                        <c:if test="${member != null }">
                            <!-- <li><a href="/member/join">회원가입</a></li>&emsp; -->
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
                <!-- 마지막 되돌리기 -->
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
                        <h3 class="title">New</h3>
                        <div class="section-nav">
                            <a href="#">전체 클래스</a>
                        </div>
                    </div>
                </div>
                <!-- /SECTION TITLE -->

                <!-- PRODUCTS -->
                <div class="col-md-12">
                    <div class="row">
                        <div class="products-tabs">
                            <div id="tab1" class="tab-pane active">
                                <div class="products-slick" data-nav="#slick-nav-1">
                                    <button class="btn_prd"> <i class="fas fa-chevron-left"></i></button>
                                    <!-- product -->
                                    <c:forEach var="vo" items="${vo}">
                                    <div class="product">
                                        <a href="/detail/${vo.class_id}">
                                            <div class="product-img">
                                                <img src="${pageContext.request.contextPath}/resources/upload/${vo.class_thumb_filename}" alt="" height="200px">
                                                <div class="product-select">
                                                    <span class="prd">${vo.cate_name}</span>
                                                </div>
                                                <div class="product-label">
                                                    <span class="new">${vo.class_tag}</span><br>
                                                    <c:if test="${vo.class_discount != 0}">
                                                    <span class="sale"><fmt:parseNumber var="class_discount" value="${vo.class_discount }" integerOnly="true" />${class_discount}%</span>
                                                    </c:if>
                                                    <c:if test="${vo.class_discount == 0}"></c:if>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">${vo.creator_name}</p>
                                                <h3 class="product-name"><a href="/detail/${vo.class_id}">${vo.class_name}</a></h3>
                                                <c:if test="${vo.class_discount != 0}">
                                                	<h4 class="product-price">월 <fmt:formatNumber value="${vo.class_price*(1 - (vo.class_discount/100))}" pattern="#,###원"/>
                                                	<del class="product-old-price">월 ${vo.class_price}원</del></h4>
                                                </c:if>
                                                <c:if test="${vo.class_discount == 0}">
                                                	<h4 class="product-price">월 <fmt:formatNumber value="${vo.class_price*(1 - (vo.class_discount/100))}" pattern="#,###원"/>
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
                                                    <button id="btn_add1" class="add-to-cart"><i class="fa fa-shopping-cart"></i><span class="tooltipp">add to cart</span></button>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    </c:forEach>
                                    <button class="btn_prd"><i class="fas fa-chevron-right"></i></button>
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

    <!--TOP SELLING-->
    <div class="section">
        <div class="container">
            <div class="row">

                <!-- SECTION TITLE-->
                <div class="col-md-12">
                    <div class="section-title">
                        <h3 class="title">Top</h3>
                        <div class="section-nav">
                            <a href="#">전체 클래스</a>
                        </div>
                    </div>
                </div>
                <!-- /SECTION TITLE-->

                <!-- PRODUCTS-->
                <div class="col-md-12">
                    <div class="row">
                        <div class="products-tabs">
                            <div id="tab2" class="tab-pane fade in active">
                                <div class="products-slick" data-nav="#slick-nav-2">
                                    <button class="btn_prd"> <i class="fas fa-chevron-left"></i></button>
									<!-- product -->
                                    <c:forEach var="dto" items="${dto}">
                                    <div class="product">
                                        <a href="/detail/${dto.class_id}">
                                            <div class="product-img">
                                                <img src="${pageContext.request.contextPath}/resources/upload/${dto.class_thumb_filename}" alt="" height="200px">
                                                <div class="product-select">
                                                    <span class="prd">${dto.cate_name}</span>
                                                </div>
                                                <div class="product-label">
                                                    <span class="new">${dto.class_tag}</span><br>
                                                    <c:if test="${dto.class_discount != 0}">
                                                   		<span class="sale"><fmt:parseNumber var="class_discount" value="${dto.class_discount }" integerOnly="true" />${class_discount}%</span>
                                                   	</c:if>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">${dto.creator_name}</p>
                                                <h3 class="product-name"><a href="/detail/${dto.class_id}">${dto.class_name}</a></h3>
                                               	<h4 class="product-price">월 <fmt:formatNumber value="${dto.class_price*(1 - (dto.class_discount/100))}" pattern="#,###원"/>
                                                <c:if test="${dto.class_discount != 0}">
                                       	        	<del class="product-old-price">월 ${dto.class_price}원</del></h4>
                                                </c:if>
                                                <c:if test="${dto.class_discount == 0}">
                                       	        	<del style="display:none;" class="product-old-price">월 ${dto.class_price}원</del></h4>
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
                                    <button class="btn_prd"><i class="fas fa-chevron-right"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /TOP SELLING-->

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


</body>
</html>