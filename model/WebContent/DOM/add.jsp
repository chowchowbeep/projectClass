<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.back {
	background-color: cyan;
}

.back:hover {
	background-color: red;
}
</style>

<script>
	//태그추가
	window.addEventListener("load", function() {
		btn.addEventListener("click", function() {
			//[div에 input태그 추가]
			var newInput = document.createElement("input");

			//[태그의 속성지정]
			//value에 초기값 넣어보기
			newInput.value = "김초엽";

			//생성한 태그에 클래스 지정하기
			newInput.classList.add('back');

			/*		
			 //배경색을 yellow로 지정
			 newInput.style.backgroundColor = "yellow";
			
			 //mouseover이벤트 발생시 배경색을 blue로 전환
			 newInput.addEventListener("mouseover", function(){
			 newInput.style.backgroundColor = "blue";
			 })
			 newInput.addEventListener("mouseout", function(){
			 newInput.style.backgroundColor = "yellow";
			 })
			 */

			//[부모태그에 create한 태그를 어펜드]
			result.appendChild(newInput);

		})
	})
</script>

</head>
<body>

	<button type="button" id="btn">추가</button>
	<div id="result"></div>
</body>
</html>