<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<form method="post" enctype="multipart/form-data"
	action="../Fileupload.do">
<!-- 하나라도 파일타입을 포함하고 있다면 method는 post여야하고, enctype도 지정해야 함  -->
	<!-- file타입과 String타입을 복사해보기 -->
	<input type="file" name="uploadfile"><br>
	상세내용 입력<input type="text" name="desc">
	<button>등록</button><!-- 뭘생략하면 submit이라고? -->
	</form>
</body>
</html>