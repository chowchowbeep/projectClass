<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="text" value="java">
	<input type="text" value="jsp">
	<input type="text" value="spring">
	<button type="button" id="btnResult">결과확인</button>
	<div id = "result"></div>
	<script>
		let strArr = [];
		btnResult.addEventListener("click",funcToArray);
		
		function funcToArray() {
			//type이 text인 텍스트필드의 입력값을 strArr배열에 저장
			let inputArr = document.getElementsByTagName("input");
			for(var i=0; i<inputArr.length; i++){
				strArr.push(inputArr[i].value); 
				
				
				//strArr값을 div에 출력
				var arrTxt1 = strArr.join("-"); //join은 배열 내 값을 특정문자로 연결시켜줌
				var arrTxt2 = strArr.toString(); //toString은 배열내 값을 하나로 연결시켜줌
			}
			
			// id속성값 그대로 document.getElementById와 같이 사용할 수 있음
			result.innerHTML = arrTxt1;
			
			
			
		
			
		}
	
	</script>
</body>
</html>