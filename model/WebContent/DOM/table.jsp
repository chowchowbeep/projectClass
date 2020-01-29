<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	table,td { 
				border: 1px solid black; 
				display: inline-block; 
				}
	div { border: 1px solid black; }			
	
</style>
<script>
	window.addEventListener("load",function(){
		var table = document.getElementById("tbl2");
		var row = table.insertRow(0);
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		cell1.innerHTML = "포도포도";
		cell2.innerHTML = "딸기딸기";
		
		//a.appendChild(b) //b가 a의 자식으로 추가됨
		//a.insertBefore(b,c) //a를 부모노드로 하여 b를 c앞에 위치한 자식노드로 삽입함
		
	})

</script>
</head>
<body>
	<table id="tbl1">
		<tr><td>1</td><td>2</td></tr>
		<tr><td>1</td><td>2</td></tr>
	</table>
	<table id="tbl2"></table>
	
	
	<div id="div1">
	  <p id="p1">This is a paragraph.</p>
	  <p id="p2">This is another paragraph.</p>
	</div>
	<div id="div2"></div>
	
	
	
</body>
</html>