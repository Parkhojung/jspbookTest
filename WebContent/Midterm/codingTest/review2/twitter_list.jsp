<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	String id = request.getParameter("id");
 	if(id != null) // 페이지 전환시 request가 바뀌기 떄문에 parameter가 null이 되게됨
	 	session.setAttribute("id", request.getParameter("id"));
 	
 	response.setContentType("text/html; charset=UTF-8");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>twitter_list.jsp</title>
</head>
<body>
<div align="center">
	<h2>My Simple Twitter!</h2>
	<hr>
	
	<form method="POST" action="tweet.jsp">
		@<%=session.getAttribute("id")%>
		<input type="text" name="msg">
		<input type="submit" value="Tweet">
	</form>
	<hr>
</div>
<div align="left">
	<ul>
	<% //<ul> <li> </li> </li> 체크
		// 트윗 관리할 객체는 app으로!!
		ArrayList<String> list = (ArrayList<String>)application.getAttribute("list");
		if(list !=null){
			for(String item: list){
				out.println("<li>"+item+"</li>"); 
			}
		}
	%>
	</ul>
</div>
</body>
</html>