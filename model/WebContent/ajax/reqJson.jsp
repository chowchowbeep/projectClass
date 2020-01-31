<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.addEventListener("load", function() {
		btn.addEventListener("click", loadDoc);
	});

	function loadDoc() {
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var res = xhttp.responseText; //String값으로 받아옴
				var obj = JSON.parse(res); //위의 String값을 object로 변경
				txtNo.value = obj.no;
				txtName.value = obj.name;
			}
		};
		xhttp.open("GET", "../getJSON.do?", true);
		xhttp.send();
	};
</script>
</head>
<body>
	<h3>ajax JSON연습</h3>
	<input id="txtNo">
	<input id="txtName">
	<button type="button" id="btn">요청</button>
</body>
</html>