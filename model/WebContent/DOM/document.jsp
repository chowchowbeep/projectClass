<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<form name="frm1"><input name="userid"></form>
<form name="frm2"><input name="username"></form>


<script>
// https://www.w3schools.com/js/js_htmldom_document.asp
	document.title = "document 연습";
	document.body.style.backgroundColor = "black";
	document.body.style.color = "white";
	document.forms[1].elements //form태그 중 1번인덱스의 태그의 모든 요소를 가져옴


	
	
/*	 	
 	요소에의 다양한 접근방법
	document.frm1.userid
	> <input name=​"userid">​
	document.forms[0].userid
	> <input name=​"userid">​
	document.forms[0].elements["userid"]
	> <input name=​"userid">
*/	​
</script>	
</body>
</html>