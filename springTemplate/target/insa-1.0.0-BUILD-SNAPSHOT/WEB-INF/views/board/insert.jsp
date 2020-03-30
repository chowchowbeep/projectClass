<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
	<h3>게시글 등록</h3>
	<form action="insert.do">
	id<input name="wid"/><br>
	title<input name="title"/><br>
	contents<input name="contents"/><br>
	<button>등록</button>
	<a href="list.do">목록</a>
	</form>
</body>
</html>