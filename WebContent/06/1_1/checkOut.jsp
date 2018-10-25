<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>checkOut.jsp</title>
</head>
<body>
<div align="center">
	<h2>계산</h2>
	<% 
	ArrayList<String> list = (ArrayList)session.getAttribute("list");
	if(list == null){
		out.println("선택한 상품이 없습니다.");	
	}
	else {
		for(Object item:list){
			out.println(item);
		}
	}
	%>
</div>
</body>
</html>