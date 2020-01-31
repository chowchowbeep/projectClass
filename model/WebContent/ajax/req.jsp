<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

   window.addEventListener("load", function(){
      btn.addEventListener("click", loadDoc);
   });
   
   
   function loadDoc() {
      var xhttp = new XMLHttpRequest(); // 브라우저 XHR엔진의 XmlHttpRequest 객체 생성
      xhttp.onreadystatechange = function() { //항상실행되므로. if문 들어간 콜백함수 걸어줌
         if (this.readyState == 4 && this.status == 200) { //this는 xhr객체
            //txtNo.value = this.responseText;
            //txtName.value = this.responseText; //응답받은 텍스트를 txtName.value값으로 적용
            //document.getElementById("demo").innerHTML = this.responseText;
            var xmlDoc = xhttp.responseXML; //응답받은객체
            var no = xmlDoc.getElementsByTagName("no")[0].childNodes[0].nodeValue; 
            var name = xmlDoc.getElementsByTagName("name")[0].childNodes[0].nodeValue;
            // getElementsByTagName("no")[0].innerHTML(html방식)과 동일. 위는 xml방식.
            txtNo.value = no;
            txtName.value =  name;
         }
      };
      var param = "no="+txtNo.value; //쿼리 또는 질의 문자열(query String) url?변수명 = 값&변수명 = 값&...
   //   xhttp.open("GET", "../GetNumber.do?" + param, true); //서버연결(서블릿으로 부름)
   //   xhttp.open("GET", "../FindName.do?" + param, true);
      xhttp.open("GET", "../GetXML.do?" , true);
      xhttp.send(); //서버요청 준비 
   }
</script>

</head>
<body>
   <h3>ajax 연습</h3>
   이름검색
   <input id="txtNo">
   <input id="txtName">
   <button type="button" id="btn">요청</button>

</body>
</html>