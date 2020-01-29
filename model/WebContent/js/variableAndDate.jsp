<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	//날짜
	var str = "2020/01/29";
	var dArr = str.split("/"); //str을 구분기호 /로 나누고, 나뉘어진 각 데이터가 배열dArr에 저장.
	var today = new Date(dArr[0], dArr[1]-1, dArr[2]); //월은 0부터 시작하기 때문에 -1해주어야 함
	console.log( today );
	console.log( today.getFullYear() );
	console.log( today.getMonth()+1 );
	console.log( today.getDate() );
	console.log( today.getDay() ); //요일번호
	
	
	
	
	
	
	
	
	
	
	
	
	//[변수]
	
	//변수(전역, 지역변수로 구별됨. 블럭외 선언시 전역변수. 블럭 내에서 var 생략시 전역변수)
	//var
	
	//블럭단위의 변수(블럭 외에서는 유효하지 않은 변수. 블럭외에서는 동일한 이름의 다른 변수가 유효.)
	//let

	//상수
	//const
	
	
	//var
	"use strict";
	//"use strict";지시어 사용시 전역변수아님. 오류발생.
	var result = 0;
	function sum(a,b) {
		rult = a+b; 
	}
	sum(1,2);
	//console.log(rult);
</script>
</head>
<body>

</body>
</html>