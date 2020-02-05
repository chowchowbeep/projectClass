<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
</script>

</head>

<body>
	<button type="button" id="btn">크기변경</button>
	<button type="button" id="btn2">크기변경2</button>
	
	<img src="../images/img.jpg" id="imgSample">
<script>
	/*
	//click이벤트 적용법 _ bind 함수 사용
	
	//addEventListener(바스크립트 DOM방식)를 bind로 바꾸어줌(changeSize.jsp참고)
	$("#btn").bind("click",function(){
		//$("#imgSample").css("width", "100px");	
		$("#imgSample").width("100px");	
	})
	
	
	
	//click이벤트 적용법 _ click 함수 사용
	
	$("#btn").click(function(){
		//인수여부에 따라 값을 지정 혹은 획득 가능
		var w = $("#imgSample").width();
		//var w = $("#imgSample").css("width"); 
		$("#imgSample").width(parseInt(w)-100);
	//jquery식 지정(자바스크립트 DOM방식은 changeSize.jsp참고)	
	})
	*/
	
	
	//click이벤트 적용법 _ on 함수 사용_ 권장
	$(document).on("click", "#btn", function(){ 
		//document의 하위요소인 btn에 이벤트를 바인딩할 수 있음
		$("#imgSample").width(200);
	})

	$("#btn2").on("click",function(){
		$("#btn").click();//#btn에 적용된 click이벤트를 #btn2에도 적용
	})	
	
</script>
</body>
</html>