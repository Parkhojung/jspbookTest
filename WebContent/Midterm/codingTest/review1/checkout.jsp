<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkout.jsp</title>
</head>
<body>
<div align="center">
	<h2>계산</h2>
	선택한 상품 목록
	<hr>
	<%
		ArrayList<String> list= (ArrayList<String>)session.getAttribute("list");
		for(String item:list){
			out.println(item+"<br>");
		}
	%>
</div>
</body>
</html>