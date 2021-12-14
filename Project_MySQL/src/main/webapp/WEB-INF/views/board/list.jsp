<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <style>
  a{
  	text-decoration : none;
  }
  table{
  	border-collapse: collapse;
  	width: 1000px;
  	margin-top : 20px;
  	text-align: center;
  }
  td, th{
  	border : 1px solid black;
  	height : 50px;
  }
  th{
  	font-size : 17px;
  }
  thead{
  	font-weight:700;
  }
  .table_wrap{
  	margin : 50px 0 0 50px;
  }
  .bno_width{
  	width:12%;
  }
  .writer_width{
  	width: 15%;
  }
  .regdate_width{
  	width: 15%;
  }
  .updatedate_width{
  	width: 15%;
  }
  .top_btn{
  	font-size: 20px;
  	padding: 6px 12px;
  	background-color: #fff;
  	border: 1px solid #ddd;
  	font-weight: 600;
  }
  </style>
</head>
<body>
<h1>목록페이지입니다.</h1>

<div class="table_wrap">
	<a href="/board/enroll" class="top_btn">게시판 등록</a>
	<table>
		<thead>
			<tr>
				<th class="bno_width">번호</th>
				<th class="bno_width">제목</th>
				<th class="bno_width">작성자</th>
				<th class="bno_width">작성일</th>
				<th class="bno_width">수정일</th>
			</tr>
		</thead>
			<!-- <tr>
				<td>번호 내용</td>
				<td>제목 내용</td>
				<td>작성자 내용</td>
				<td>작성일 내용</td>
				<td>수정일 내용</td>
			</tr>
			<tr>
				<td>번호 내용</td>
				<td>제목 내용</td>
				<td>작성자 내용</td>
				<td>작성 내용</td>
				<td>수정 내용</td>				
			</tr>
			<tr>
				<td>번호 내용</td>
				<td>제목 내용</td>
				<td>작성자 내용</td>
				<td>작성일 내용</td>
				<td>수정일 내용</td>
				
			</tr> -->
			 <c:forEach items="${list}" var="list">
            <tr>
                <td><c:out value="${list.bno}"/></td>
                <td><c:out value="${list.title}"/></td>
                <td><c:out value="${list.writer}"/></td>
                <td><c:out value="${list.regdate}"/></td>
                <td><c:out value="${list.updateDate}"/></td>
            </tr>
        </c:forEach>	
	</table>

</div>


<script>
$(document).ready(function(){
    
    let result = '<c:out value="${result}"/>';
    
    checkAlert(result);
    
    function checkAlert(result){
        
        if(result === ''){
            return;
        }
        
        if(result === "enrol success"){
            alert("등록이 완료되었습니다.");
        }
        
    }    
    
});
</script>


</body>
</html>