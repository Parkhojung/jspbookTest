<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	session.setAttribute("id",request.getParameter("id"));
	//세션으로 생명주기 변경-> 페이지 전환 일어나기때문
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selProduct.jsp</title>
</head>
<body>
<div align="center">
	<h2>상품선택</h2>
	<hr>
	<%=session.getAttribute("id") %>님 환영합니다!!!
	<hr>
	<form method="POST" action="add.jsp">
		<select name="fname">
			<option>사과</option>
			<option>파인애플</option>
			<option>귤</option>
			<option>레몬</option>		
		</select>
		<input type="submit" value="추가">
	</form>
	<a href="checkout.jsp">계산</a>
</div>
</body>
</html>