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
    <title>Class_Basic</title>
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="/resources/css/bootstrap.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Custom stylesheet -->
    <link type="text/css" rel="stylesheet" href="/resources/css/creator2.css"/>

    <!-- fontawesom -->
    <script src="https://kit.fontawesome.com/a1e0f49770.js" crossorigin="anonymous"></script>
    
    <!-- js -->
    <script src="js/main.js"></script>

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
                            <img src="/resources/img/LOGO-removebg-preview.png">
                        </a>&emsp;&ensp;
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- ACCOUNT -->
                <div class="col-md-2">
                    <div class="account">
                        <ul class="account-section">
                            <li><a href="class_basic">크리에이터</a></li>&emsp;
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
                      <a class="nav-link active" aria-current="page" href="class_basic">① 기본정보</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="class_title">② 제목 및 커버</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="class_info">③ 클래스 소개</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="class_curriculum">④ 커리큘럼</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="class_creator">⑤ 크리에이터 소개</a>
                    </li>
                </ul>
            </div>

            <div class="col-md-9">
                <!-- FORM 위치 -->
                <form>
                    <!-- CATEGORY -->
                    <div class="container">
                        <div class="regis_title">
                            <h1>클래스의 카테고리를 선택해주세요</h1>
                        </div>
                        <div class="regis-box">
                            <select class="input-select">
                                <option value="0" selected disabled>카테고리를 선택해주세요.</option>
                                <option value="1">크리에이티브 (미술, 음악, 요리 등 취미 클래스를 만들고 싶어요)</option>
                                <option value="2">커리어 (직무, 자기계발 등 커리어 향상을 위한 클래스를 만들고 싶어요)</option>
                            </select>
                            <p></p>
                            <select class="input-select">
                                <option value="0" selected disabled>카테고리를 선택해주세요.</option>
                                <option value="1">드로잉</option>
                                <option value="2">음악</option>
                                <option value="3">베이킹</option>
                            </select>
                            <p></p>
                            <select class="input-select">
                                <option value="0" selected disabled>카테고리를 선택해주세요.</option>
                                <option value="1">펜/연필</option>
                                <option value="2">마카</option>
                                <option value="3">색연필</option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <!-- /CATEGORY -->

                    <!-- TITLE -->
                    <div class="container">
                        <div class="regis_title">
                            <h1>클래스 난이도를 선택해주세요</h1>
                        </div>
                        <div class="regis-box">
                            <select class="input-select">
                                <option value="0" selected disabled>난이도를 선택해주세요.</option>
                                <option value="1">입문자</option>
                                <option value="1">초급자</option>
                                <option value="2">중급자</option>
                                <option value="3">전문가</option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <!-- /TITLE -->

                    <!-- PERIOD -->
                    <div class="container">
                        <div class="regis-title">
                            <h1>수강료를 입력해주세요</h1>
                        </div>
                        <div class="regis-box">
                            <h3>수강료</h3>
                            <input class="input" placeholder="수강료를 월 단위로 입력해주세요"><br>
                            <h3>할인율</h3>
                            <input class="input" placeholder="할인율을 % 없이 입력해주세요"><br>
                        </div>
                    </div>
                    <!-- /PERIOD -->
                </form>

                <!-- NEXT -->
                <div class="pagination">
                    <a href="class_title"><button type="button" class="btn_next" value="next">다음</a>
                    <!-- <a class="btn_next" href="class_title.html" role="button">다음</a> -->
                </div>
                <!-- /NEXT -->
            </div>
        </div>
    </div>
    <!-- /REGISTRATION -->
</body>
</html>