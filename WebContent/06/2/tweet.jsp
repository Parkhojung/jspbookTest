<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");

	String id = (String)session.getAttribute("id");
	String msg = request.getParameter("msg");
		
	ArrayList<String> list = (ArrayList<String>)application.getAttribute("list");
	if(list == null){
		list = new ArrayList<String>() ;
		application.setAttribute("list",list);
		// 리스트 lifecycle-> app
	}
	
	SimpleDateFormat f = new SimpleDateFormat("YYYY-MM-d E요일 HH:mm");
	list.add(id+"::"+msg+" "+ f.format( new Date() ) );
	
	response.sendRedirect("twitter_list.jsp");
%>
<html>
<head>
<meta charset="UTF-8">
<title>ch06: tweet.jsp</title>
</head>
<body>
	
</body>
</html>