<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	if(id != null){ // 확인하기
		session.setAttribute("id",id);
	}
%>
<meta charset="UTF-8">
<title>ch06: twitter_list.jsp</title>
</head>
<body>
<div align="center">
	<h2>My Simple Twitter!</h2>
	<hr>
	
	<form method="POST" action="tweet.jsp">
		@<%=session.getAttribute("id") %>
		<input type="text" name="msg">
		<input type="submit" value="Tweet">
	</form>
	<hr>
</div>
<div align="left">
	<ul>
		<% 		//생명주기 twitter는 application
				ArrayList<String> list = (ArrayList<String>)application.getAttribute("list");
				if(list != null){
					for(String item:list){
						out.println("<li>"+item+"</li>");//html 짝
					}
				}
		%>
	</ul>
</div>	
</body>
</html>