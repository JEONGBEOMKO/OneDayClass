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

    <!-- file image -->
    <script type="text/javascript">
        function handleFileSelect1(){
            var reader = new FileReader();
            document.getElementById("preview1").innerHTML = "";
            
            reader.onload=function(event){
                var img = document.createElement("img");
                img.setAttribute("src", event.target.result);
                document.querySelector("div#preview1").appendChild(img);
            }
            reader.readAsDataURL(event.target.files[0]);  
        }

        function handleFileSelect2(){
            var reader = new FileReader();
            document.getElementById("preview2").innerHTML = "";
            
            reader.onload=function(event){
                var img = document.createElement("img");
                img.setAttribute("src", event.target.result);
                document.querySelector("div#preview2").appendChild(img);
            }
            reader.readAsDataURL(event.target.files[0]);  
        }

        function handleFileSelect3(){
            var reader = new FileReader();
            document.getElementById("preview3").innerHTML = "";
            
            reader.onload=function(event){
                var img = document.createElement("img");
                img.setAttribute("src", event.target.result);
                document.querySelector("div#preview3").appendChild(img);
            }
            reader.readAsDataURL(event.target.files[0]);  
        }
        
        function resetAll1(){
            document.getElementById("preview1").innerHTML = "";
        }
        
        function resetAll2(){
            document.getElementById("preview2").innerHTML = "";
        }
        
        function resetAll3(){
            document.getElementById("preview3").innerHTML = "";
        }
    </script>

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
                <div class="progress-bar" role="progressbar" style="width: 40%; background-color: #98B6EC;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
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
                <form>
                    <!-- INFO -->
                    <div class="container">
                        <div class="regis_title">
                            <h1>클래스를 통해 무엇을 알려주실 수 있나요</h1>
                        </div>
                        <div class="regis-box2">
                            <div id="preview1" >이미지 미리보기</div>
                            <label for="file1" class="btn_basic">파일 업로드</label>&emsp;
                            <input type="file" name="files" class="file1" id="file1" onchange="handleFileSelect1(event)" accept="image/*">
                            <button type="reset" class="btn_basic" onclick="resetAll1();">파일 취소</button> <br>
                            <textarea type="textarea" class="text" placeholder="설명을 입력해주세요"></textarea>
                        </div>
                        <div class="regis-box2">
                            <div id="preview2" >이미지 미리보기</div>
                            <label for="file2" class="btn_basic">파일 업로드</label>&emsp;
                            <input type="file" name="files" class="file2" id="file2" onchange="handleFileSelect2(event)" accept="image/*">
                            <button type="reset" class="btn_basic" onclick="resetAll2();">파일 취소</button> <br>
                            <textarea type="textarea" class="text" placeholder="설명을 입력해주세요"></textarea>
                        </div>
                        <div class="regis-box2">
                            <div id="preview3" >이미지 미리보기</div>
                            <label for="file3" class="btn_basic">파일 업로드</label>&emsp;
                            <input type="file" name="files" class="file3" id="file3" onchange="handleFileSelect3(event)" accept="image/*">
                            <button type="reset" class="btn_basic" onclick="resetAll3();">파일 취소</button> <br>
                            <textarea type="textarea" class="text" placeholder="설명을 입력해주세요"></textarea>
                        </div>
                    </div>
                    <!-- /INFO -->
                </form>

                <!-- NEXT -->
                <div class="pagination">
                    <a href="class_curriculum"><button type="button" class="btn_next" value="next">다음</a>
                </div>
                <!-- /NEXT -->
            </div>
        </div>
    </div>
    <!-- /REGISTRATION -->

</body>
</html>