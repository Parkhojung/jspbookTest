<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
 <%
 	request.setCharacterEncoding("UTF-8");
 	
 	String msg = request.getParameter("msg");
 	String id = (String)session.getAttribute("id");
 	
 	ArrayList<String> list = (ArrayList<String>)application.getAttribute("list");
 	if(list ==null){
 		list = new ArrayList<String>();
 		application.setAttribute("list",list);
 	}
 	
 	SimpleDateFormat f = new SimpleDateFormat("E요일 MM월 dd일 HH:mm");
 	String Date = f.format(new java.util.Date());
 	String resMsg = id +"::"+msg+", "+Date;
 	list.add(resMsg);
 	
 	response.sendRedirect("twitter_list.jsp");
 %>
 
  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tweet.jsp</title>
</head>
<body>
</body>
</html>