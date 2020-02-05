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
//$()->제이쿼리 객체를 가르킴
$(function(){          //ready 이벤트 == window.load
   result.innerHTML = "로딩중...";
   
   //ajax함수를 jquery방식으로 호출
   $.ajax
   ({
      //ajax settings 객체{}_ ajax속성이 위치하는 부분 //success:성공시 호출할 콜백지정, type:데이터 전송방식(get,post)
		 url : '../ajax/apiTestCommand.do'
         //serialize()함수 : 모든 값을 query문자열로 만들어줌
         //serializeArray()는 배열로
         , dataType : "json" 
         //서버로부터 받은 값json객체를 데이터가 자바스크립트의 객체로 전환하여 아래의 data인자로 전달. 
        	, success : function( data ) {
        		 alert( '오류 없이 url 접근과 response 획득이 완료 되었습니다 :)' );
				result.innerHTML = JSON.stringify(data); //JSON타입으로 받은 데이터를 스트링으로 변환해주어야 함.
        		 //정상적으로 획득한 response 응답 데이터로 수행하고 싶은 내용을 입력 합니다. (실제 데이터 처리)
        		 }
        	,	 error : function( result ) {
        		 alert( '오류가 발생 되었습니다' );
        		 //오류 발생시 수행하고 싶은 내용을 입력 합니다.
        		 }
        	,	 complete : function() {
        		 alert( 'ajax 동작이 완료 되었습니다 :)' );
        		 //ajax 동작 완료 후 수행하고 싶은 내용을 입력 합니다. (로딩 이미지, 완료 문구 출력 등)
        		 //success 또는 error 완료 후 수행 됩니다.
        		 }
   	})
   console.log("ajax end");
}); 



/* $.ajax("./server/getName.jsp", { async: false }); //ajax 요청할 때는 url 들어가고
.done(function(data){ result.innerHTML = data;})
.fail(function(){ });
.always(function(){ });
*/


</script>
</head>
<body>
	<div id="result"></div>
</body>
</html>