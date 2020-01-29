<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.addEventListener("load",init); //페이지 로드후 init함수 호출
function init(){
	// [이벤트지정]
	divItem.addEventListener("click", 
			function(){ alert("div"); })
	btn.addEventListener("click", 
			function(e){ 
		alert("btn");
		e.stopPropagation(); //이벤트전파를 중지
		})
			
	// [이벤트 전파]		
	// divItem내 btn이 포함되므로 btn을 누르면 자신의 이벤트실행후
	// 부모태그인 divItem의 function도 실행됨
}

</script>


</head>


<body>
	<div id ="divItem">
		<button type="button" id="btn">버튼</button>
	</div>
</body>
</html>