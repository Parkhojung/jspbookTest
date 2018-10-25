<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%="액션 시작전 jsp코드" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
액션 시작전
</head>
<body>
	<jsp:forward page="footer2.jsp">
		<jsp:param name ="email" value="parkhj062@gmail.com"/>
		<jsp:param name= "tel" value="010-8060-3519"/>
	</jsp:forward>
</body>
</html>
<%="액션 종료후 jsp코드" %>