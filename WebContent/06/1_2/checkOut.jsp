<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h2>계산</h2>
	<hr>
	<% 
		response.setContentType("text/html charset=UTF-8");
	
		if(session.getAttribute("list")==null){
			out.println("선택한 상품이 없습니다.");	
		
		}
		else{
			
			ArrayList<String> list = (ArrayList)session.getAttribute("list");
			for(String item:list){
				out.println(item+"<br>");
			}
		}
	%>
	
</div>
</body>
</html>