<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	window.addEventListener("load", function(){
		//전체조회 이벤트
		btnList.addEventListener("click", function(){
			var url = "../ajaxBoardList.do";
			var data = null;
			var callback = function(boardList){ //첫번째 인수에 결과값이 들어가있음
				for(var i=0; i<boardList.length; i++){
					result.innerHTML += boardList[i].poster +"<br>";
				}
			}
			return $.getJSON(url, data, callback); //success시 callback함수 호출
		});
		
		//번호로 조회 이벤트
		btnOne.addEventListener("click", function(){
			var url = "../ajaxBoardOne.do";
			var data = data = {no:no.value};
			var callback = function(board,status, xhr){ //첫번째 인수에 결과값이 들어가있음
				console.log(board)
				console.log(status) //서버상태
				console.log(xhr) //xhr객체자체 넘겨받음
				result.innerHTML += board.poster+"<br>";
			}
			return $.getJSON(url, data, callback); //success시 callback함수 호출
		});
		
		
		
	});
	
	//function callback() {} //위의 이벤트 리스너 내에서 선언되어도 괜찮음
	
	
</script>

</head>
<body>
	<input type="text" id="no" />
	<button type="button" id="btnOne">번호로조회</button>
	<button type="button" id="btnList">전체조회</button>

	<div id="result"></div>


</body>
</html>