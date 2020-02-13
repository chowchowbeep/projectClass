<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!-- spring에서는 core_rt를 사용하세요 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>게시글목록</h3>
	<div class="searchDiv">
		<form action="boardList" name="searchFrm">
			<!-- 현재페이지 요청시 action생략가능 -->
			<input type="hidden" name="page" value="1">
			<!-- 페이지값도 함께 전송되도록_ 초기값 1 -->
			
			작성자 <input name="poster"> 
			제목 <input name="subject">
			<button>검색</button>
		</form>
	</div>
	
	<c:forEach items="${list}" var="board">
		<div>
			<span>${board.no }</span> 
			<span>${board.poster }</span> 
			<span>${board.subject}</span>
		</div>
	</c:forEach>
	
	
	
	=======================<br>
	${boardDTO} <!--  --><br>
	=======================<br>
	<div>
		<c:forEach begin="1" end="${boardDTO.lastPage}" var="i">
			<a href="#" onclick="goPage(${i})">${i}</a>
		</c:forEach>
	
	</div>
	
	
	<script>
		function goPage(p){
			searchFrm.page.value=p; //클릭한 페이지 번호가 상단 히든 태그의 페이지번호값으로 전송됨
			searchFrm.submit(); //제출하면 해당하는 페이지의 결과를 노출
		}
	
	</script>
</body>
</html>