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
   ("./server/getName.jsp", 
      //ajax settings 객체{}_ ajax속성이 위치하는 부분 //success:성공시 호출할 콜백지정, type:데이터 전송방식(get,post)
		   { async: true //async = [true, false] false: 비동기 안 함(=동기)
      //beforeSend: 보내기 전 값처리
         , beforeSend : function(){}
         , cache : false
         , data : $("#frm").serialize() 
         //서버로 데이터를 전송할때의 옵션 //form의 모든 값을 파라미터로 
         //serialize()함수 : 모든 값을 query문자열로 만들어줌
         //serializeArray()는 배열로
         , dataType : "json" 
         //서버로부터 받은 값을 자동으로 파싱(기본값은 html). jsonparse할 필요가 없음.
         //해당 데이터가 자바스크립트의 객체로 전환되어 아래의 data인자로 전달됨. 
         })
    .done(function(data){ //done메소드로 호출되었을 호출 성공했을 때 실행
    	result.innerHTML = data.name; 
    	}) 
    //json으로 넘어온 값 가져올 때 인자명.필드명
    .fail(function(){})
    .always(function(){});
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
<form id="frm" name="frm">
	<input name="no" value=""> <!-- name속성 필수 -->
	<input name="name" value="">
</form>
<div id="result">

</div>
</body>
</html>