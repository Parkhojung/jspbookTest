<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selProduct.jsp</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
	session.setAttribute("id", request.getParameter("id"));
%>

<body>
	<div align="center">
		<h2> 상품선택</h2>
		<hr>
			<%=session.getAttribute("id")%>님 환영합니다.
		<hr>
			<form method="POST" action="add.jsp">
				<select name="fid">
					<option>사과</option>
					<option>배</option>
					<option>귤</option>
				</select>
				<input type ="submit" value="추가">
			</form>
			<a href="checkOut.jsp" >계산</a>
	</div>
</body>
</html>