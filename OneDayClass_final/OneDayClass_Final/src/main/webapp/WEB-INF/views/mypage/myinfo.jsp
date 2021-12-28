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
                        <li class="active"><a href="/main">클래스</a></li>&ensp;
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
                        <li><a href="/class/class_total">크리에이터</a></li>&emsp;
                        <li><a href="/member/logout.do">로그아웃</a></li>
                    </ul>
                </div>
            </div>
            <!-- /ACCOUNT -->
        </div>
    </div>
</div>
<!-- /MAIN HEADER -->




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
            	<div class="info-table">
                    <form>
                        <table width="50%">
                           
                            <tr>
                                <td >  

                                </td>
                                <c:if test="${member !=null }">
                                <center>
                                <!--<div id="user" ></div>-->
                                
                                <i class="fas fa-user fa-3x" style="color: #B9BABC;"></i>
                            
                                <h1>welcome <font style="color: #98B6EC; text-transform: uppercase;">${member.memberName}</font>!</h1>
                               
                                    <h4> 충전금액 :  <fmt:formatNumber value="${member.money}" pattern="#,###원"/> </h4>
                                    
                                    <h4>포인트  :  <fmt:formatNumber value="${member.point}" pattern="#,###P"/> </h4>
                                   
                                </center>
                                </c:if>


                                </td>
                            </tr>
                           
                        </table>
                    </form>   
				</div>                        
                <!-- SECTION TITLE -->
                <div class="col-md-12">
                    <div class="section-title" style="margin-top: 50px; margin-left:30px">
                        <h3 class="title">추천 강좌 TOP5</h3>
                        
                    </div>
                </div>
                <!-- /SECTION TITLE -->
                            <!-- PRODUCTS -->
                <div class="col-md-12">
                    <div class="row">
                        <div class="products-tabs">
                            <div id="tab1" class="tab-pane active">
                                <div class="products-slick" data-nav="#slick-nav-1">
                                    <div class="products" style="margin-left: 20px;">
                                    <!-- product -->
                                    <c:forEach var="myClass" items="${myClass}">
                                    <div class="product" style="margin-right: 20px;">
                                        <a href="/detail/${myClass.class_id}">
                                            <div class="product-img">
                                                <img src="${pageContext.request.contextPath}/resources/upload/${myClass.class_thumb_filename}" alt="" height="200px">
                                                <div class="product-select">
                                                    <span class="prd">${myClass.cate_name}</span>
                                                </div>
                                                <div class="product-label">
                                                    <span class="new">${myClass.class_tag}</span><br>
                                                    <c:if test="${myClass.class_discount != 0}">
                                                    <span class="sale"><fmt:parseNumber var="class_discount" value="${myClass.class_discount }" integerOnly="true" />${class_discount}%</span>
                                                    </c:if>
                                                    <c:if test="${myClass.class_discount == 0}"></c:if>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">${myClass.creator_name}</p>
                                                <h3 class="product-name"><a href="/detail/${vo.class_id}">${myClass.class_name}</a></h3>
                                                <c:if test="${myClass.class_discount != 0}">
                                                	<h4 class="product-price">월 <fmt:formatNumber value="${myClass.class_price*(1 - (myClass.class_discount/100))}" pattern="#,###원"/>
                                                	<del class="product-old-price">월 ${myClass.class_price}원</del></h4>
                                                </c:if>
                                                <c:if test="${myClass.class_discount == 0}">
                                                	<h4 class="product-price">월 <fmt:formatNumber value="${myClass.class_price*(1 - (myClass.class_discount/100))}" pattern="#,###원"></fmt:formatNumber></h4>
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /TOP SELLING--> <!-- FOOTER -->
    <footer id="footer">
        <!-- top footer -->
        <div class="footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer">
                            <h3 class="footer-title">About Us</h3>
                            <p>비트캠프 디지털컨버전스 기반 딥러닝 학습을 이용한 웹 개발자 양성과정 A / 팀: 이름이름</p>
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
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <a href="https://colorlib.com" target="_blank">Colorlib </a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <!-- /bottom footer -->
    </footer>
    <!-- /FOOTER -->
                                  
                                     
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/js/scripts.js"></script>
</body>

<script>

</script>



</html>