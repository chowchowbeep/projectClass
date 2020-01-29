<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
	// json객체
	let boardDTO = { no:1, poster:"홍길동", subject:"첫번째글" };
	
	// js 스트링 배열
	let atrArr = [ "strawberry", "banana", "mandarin" ];
	
	// 객체 배열
	let baordArr = [{ no:1, poster:"홍길동", subject:"첫번째글" },
					{ no:2, poster:"김길동", subject:"두번째글" },
					{ no:3, poster:"방길동", subject:"세번째글" }
					];
	
	// boardDTO의 작성자 출력
	document.write(boardDTO.poster + "<br>");
	
	//strArr 두번째 과일 출력
	document.write(atrArr[1] + "<br>");
	
	//boardArr의 세번째 게시글의 제목 출력
	document.write(baordArr[2].subject + "<br>");
	
	
	
	</script>

</head>
<body>
<div id="result"></div>


</body>
</html>