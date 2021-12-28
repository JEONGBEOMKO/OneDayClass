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
    <title>OneDayClass_Cart</title>
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="../resources/css/mypage/bootstrap.min.css"/>

    <!-- Custom stylesheet -->
    <link type="text/css" rel="stylesheet" href="../resources/css/main.css"/>
    <link rel="stylesheet" href="../resources/css/cart3.css">
    
    <link  type="text/css" href="../resources/css/mypage/AA.css" rel="stylesheet" />

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
            <div class="col-md-4">
                <div class="header-logo">
                    <a href="../main" class="logo">
                        <img src="../resources/img/Logo6.png" width="150">
                    </a>&emsp;&ensp;
                    <ul class="header-category">
                        <li class="active"><a href="../main">클래스</a></li>&ensp;
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
                <div class="container-fluid">
                
                <!-- 장바구니 영역 -->

<div class="content_area">
         <div class="content_subject"><span><i class="fas fa-receipt"></i> 주문내역</span></div>
         <!-- 장바구니 리스트 -->
         <div class="content_middle_section"></div>
         <!-- 장바구니 가격 합계 -->
         <!-- cartInfo -->
         <div class="content_totalCount_section">
		<span class="update_future">추후 업데이트 예정 <i class="fas fa-spinner"></i></span>         
      </div>

   <!-- /장바구니 영역 -->

   
                  
                </div>
                </div>

                </div>
            </div>
         
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/js/scripts.js"></script>



         <!-- FOOTER -->
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
    
    <script>
$(document).ready(function(){

	/* 종합 정보 섹션 */
	setTotalInfo();
	
});

/* 체크여부에따른 종합 정보 변화 */
$(".individual_cart_checkbox").on("change", function(){
	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
	setTotalInfo($(".cart_info_td"));
});

/* 체크박스 전체 선택 */
$(".all_check_input").on("click", function(){

	/* 체크박스 체크/해제 */
	if($(".all_check_input").prop("checked")){
		$(".individual_cart_checkbox").attr("checked", true);
	} else{
		$(".individual_cart_checkbox").attr("checked", false);
	}
	
	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
	setTotalInfo($(".cart_info_td"));	
	
});

/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
function setTotalInfo(){
	
	let totalPrice = 0;				// 총 가격
	let totalCount = 0;				// 총 갯수
	let totalKind = 0;				// 총 종류
	let totalPoint = 0;				// 총 마일리지
	let deliveryPrice = 0;			// 배송비
	let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)

	
	$(".cart_info_td").each(function(index, element){
		if($(element).find(".individual_cart_checkbox").is(":checked") === true){		
			// 총 가격
			totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
			// 총 갯수
			totalCount += parseInt($(element).find(".individual_bookCount_input").val());
			// 총 종류
			totalKind += 1;
			// 총 마일리지
			totalPoint += parseInt($(element).find(".individual_totalPoint_input").val());			
		}

	});
	
	
	/* 배송비 결정 */
	if(totalPrice >= 30000){
		deliveryPrice = 0;
	} else if(totalPrice == 0){
		deliveryPrice = 0;
	} else {
		deliveryPrice = 3000;	
	}
	
		finalTotalPrice = totalPrice + deliveryPrice;
	
	/* ※ 세자리 컴마 Javscript Number 객체의 toLocaleString() */
	
	// 총 가격
	$(".totalPrice_span").text(totalPrice.toLocaleString());
	// 총 갯수
	$(".totalCount_span").text(totalCount);
	// 총 종류
	$(".totalKind_span").text(totalKind);
	// 총 마일리지
	$(".totalPoint_span").text(totalPoint.toLocaleString());
	// 배송비
	$(".delivery_price").text(deliveryPrice);	
	// 최종 가격(총 가격 + 배송비)
	$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());		
}

/* 수량버튼 */
$(".plus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	$(this).parent("div").find("input").val(++quantity);
});
$(".minus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	if(quantity > 1){
		$(this).parent("div").find("input").val(--quantity);		
	}
});

/* 수량 수정 버튼 */
$(".quantity_modify_btn").on("click", function(){
	let cartId = $(this).data("cartid");
	let class_count = $(this).parent("td").find("input").val();
	$(".update_cartId").val(cartId);
	$(".update_class_count").val(class_count);
	$(".quantity_update_form").submit();
	
});

/* 장바구니 삭제 버튼 */
/* $(".delete_btn").on("click", function(){
	//e.preventDefault();
	//let cartId = $(this).data("cartid");
	//$(".delete_cartId").val(cartId);
	$(".quantity_delete_form").submit();
}); */
$(".delete_btn").on("click", function(){
	$(".quantity_delete_form").submit();
});

</script>

</body>
</html>