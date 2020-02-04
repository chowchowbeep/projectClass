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
   //async = [true, false] false: 비동기 안 함(=동기)
   $.ajax("./server/getName.jsp", 
         { async: true
      //beforeSend: 보내기 전 값처리
         , beforeSend : function(){}
         , cache : false
         , data : $("#frm").serialize() //form의 모든 값을 파라미터로 
         //serialize()함수 : 모든 값을 query문자열로 만들어줌
         //serializeArray()는 배열로
         , dataType : "json" //서버로부터 받은 값을 자동으로 파싱(기본값은 html)
         })
    .done(function(data){ result.innerHTML = data.name; }) 
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