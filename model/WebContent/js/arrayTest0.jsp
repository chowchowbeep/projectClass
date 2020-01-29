<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img { width: 200px; }
</style>

<script>
	window.onload = function(){
		//모든 이미지의 alt속성만 div에 출력
		//여러 요소를 tagName을 이용하여 배열로 가져옴
		var imgArr = document.getElementsByTagName("img");
		console.log(imgArr);
		
		var text = "";
		for(i=0; i < imgArr.length; i++){
			text += imgArr[i].alt + "<br>"; // 특정요소의 속성값 가져오기
			console.log(text);
			  
		}
		document.getElementById("result").innerHTML = text;
	}
</script>

</head>
<body>
<img src="../images/img.jpg" alt="애용이">
<img src="../images/imgg.jpg" alt="떼껄룩">
<img src="../images/chunbae.jpg" alt="김춘배">
<div id = "result"></div>


</body>
</html>