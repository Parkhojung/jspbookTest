<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>twitter_login.jsp</title>
</head>
<body>
<div align ="center">
	<h2>트위터 로그인</h2>
	<form method="POST" action="twitter_list.jsp">
		<input type="text" name="id">
		<input type="submit" value="로그인">
	</form>
</div>
</body>
</html>