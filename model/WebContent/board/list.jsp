<%@page import="java.util.List"%>
<%@page import="co.yedam.app.board.BoardDTO"%>
<%@page import="co.yedam.app.board.BoardDAO"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html> 
<head> <title>게시판</title> </head>

<body>
<!--
상단 taglib prefix="my" tagdir="/WEB-INF/tags" 으로 사용가능한 custom tag
<my:page></my:page>
<my:boardType></my:boardType>
 -->


<table width="80%" border=0 > 
     <tr><td align="center" > JDBC 게시판 </td></tr>
</table><br>

<table width="80%" border=1 cellspacing=0 >
	<tr height=30 bgcolor="#FFFF99" >
	  <th>번호</th><th>제목</th><th>글쓴이</th><th>등록일</th><th>조회</th>
	</tr>
<%--
	BoardDAO dao = new BoardDAO();
	List<BoardDTO> list = (List<BoardDTO>)request.getAttribute("list");
	//getAttribute의 리턴타입이 object이기 때문에 타입캐스팅 필요.
	for (BoardDTO dto : list) {	
		
--%>
<c:forEach items="${list }" var="dto">
<!--  ${list }는 request.getAttribute("list")와 동일 -->
<tr height=28 align=center>
<td>${dto.getNo()}</td>
<td><a href="view.jsp?c_no=${dto.getNo()}>"> ${dto.getSubject()} </a></td>
<td>${dto.getPoster()}</td>
<td>${dto.getLastpost()}</td>
<td>${dto.getViews()}</td>
</tr>

<%--
	}
--%>
</c:forEach>
<c:if test ="${empty list}">
	<tr><td>no data</td></tr>
</c:if>
</table>

<table width="80%" border=0 >
	<tr><td align="right"><a href="insert_form.jsp"> 글쓰기</a> </td> </tr>
</table>






<!-- 
<BR><%=application.getRealPath("/") %>
<BR><%=request.getHeader("User-Agent") %>
<BR><%=request.getContextPath() %>
<img src="<%=request.getContextPath()%>/model1/img/a.jpg"/> 
절대경로대신 컨텍스트 패스를 사용하여 경로가 꼬이지 않도록 -->
</body>
</html>











