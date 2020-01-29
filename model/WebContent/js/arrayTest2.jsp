<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="text" id="no">
	<input type="text" id="username">
	<button type="button" id="btnAdd">추가</button>
<script>
	btnAdd.addEventListener("click", funcAdd);
	var arr = []; // js의 배열 = 자바의 ArrayList
	function funcAdd(){
		// 객체타입을 추가
		// [{no:1, username:'홍길동'}, {},{} ]
		
		let obj = {}; // 객체생성 = 자바의 DTO
		obj.no = no.value; //id가 no인 input태그의 value값을 obj객체의 no필드에 저장
		obj.username = username.value;
		
		arr.push(obj);//배열에 추가
		
		console.log(JSON.stringify(arr)); //arr배열을 JSON타입으로 바꾸어줌
	}

</script>	
</body>
</html>