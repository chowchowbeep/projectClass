<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework.jsp</title>
<script>
var txt="";
window.onload = function(){
	
	
	var btn = document.getElementById("btnCheck");
	btn.addEventListener("click", inputCheck);
	
	var btn2 = document.getElementById("print");
	btn2.addEventListener("click", print);
}
function inputCheck(){
//모든 항목 필수입력 체크
var txtArr = document.querySelectorAll("textarea,[type=text]"); //textarea와 input의 type속성이text인 요소를 선택
for(i=0;i<txtArr.length;i++){
	if(txtArr[i].value == "") {
		alert(txtArr[i].id +"가 입력되지 않았습니다.");
		return;
	}
}
//이름은 최소 길이가 5글자 이상인지 체크하고 모두 대문자로 변경하여 출력(alert창 이용 or?)
if(mbName.value.length >= 5){
	txt += "이름 : " + mbName.value.toUpperCase() + "<br>";
} else {
	alert("이름을 5글자 이상으로 입력해주세요");
	return false;
}
//이메일은 "@"와 "."을 포함하는지 체크(정규표현식regexp이용)하여 true/false 결과 출력
var mailbool = /(?=.*\.)(?=.*@).*/.test(mbEmail.value);
//console.log(mailbool);
if( mailbool == true ){
	txt += "이메일검사" + "true" + "<br>";
} else {
	alert("이메일은 @와 .을 포함하여야 합니다.");
	return false;
}
//등록일자는 날짜 형식이 맞는지 체크하고 년도는 2015~2019년도(년도추출함수이용) 사이인지 체크하여 결과 출력


//홈페이지는 http로 시작하는지(포함이 아니라 '시작') 체크하여 결과 출력
var homebool = /^http:\/\//.test(mbHomepage.value);
console.log(homebool);
if (homebool == true) {
	txt += "홈페이지주소검사" + "true" + "<br>";
} else {
	alert("홈페이지는 http://로 시작해야합니다.");
	return false;
}
//성적은 소수점 2자리까지만 입력하였는지 체크(정규표현식) 혹은하고 아니라면 둘째자리까지만 변경하여 div에 출력



//비고란의  \n(엔터키) 를 <br>태그로 변환하여 출력
alert("입력확인이 완료되었습니다.");
}
function print(){
	// 최종출력
	if(txt == ""){
		alert("먼저 입력확인을 완료해 주세요.");
	} else{
		result.innerHTML = txt;
	}
}
</script>
</head>
<body>
	<form>
		이름 <input type="text" id="mbName" value="test123" /><br> 이메일 <input
			type="text" id="mbEmail" value="t@t." /><br> 등록일자 <input
			type="text" id="mbDate" value="2014/12/12" /><br> 홈페이지 <input
			type="text" id="mbHomepage" value="yedam.ac" /><br> 성적 <input
			type="text" id="mbScore" value="67.123" /><br> 비고
		<textarea id="mbBigo">default</textarea><br>
		<button type="button" id="btnCheck">입력확인</button>
		<button type="button" id="print">입력내용출력</button>		
	</form>
	<div id="result"></div>
</body>
</html>