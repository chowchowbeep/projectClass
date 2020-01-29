<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script type="text/javascript">
window.addEventListener("load",init); //페이지 로드후 init함수 호출
function init(){
	btn.addEventListener("mouseover",function(){
		//마우스가 요소위로 올라가면 보이지 않게
		result.style.display = "none";
	})
		btn.addEventListener("mouseout",function(){
		//마우스가 요소를 벗어나면 보이게
		result.style.display = "";
	})
	
//	img1.addEventListener("error", function(){
//		//이미지의 src변경
//		this.src = "../images/chunbae.jpg";
//	})

}


</script>
</head>
<body>
	<button type="button" id="btn">숨기기</button>
	<div id="result">남산의 부장들 소개</div>
	<img src="../images/chuneeeeebae.jpg" id="img1" 
		onerror="this.src = '../images/chunbae.jpg'">
</body>
</html>