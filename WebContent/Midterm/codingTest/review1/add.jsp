<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%
	response.setContentType("text/html; charset=UTF-8");
	request.setCharacterEncoding("UTF-8");
	ArrayList<String> list = (ArrayList<String>)session.getAttribute("list");
	if(list ==null){
		list = new ArrayList<String>();
		session.setAttribute("list",list);
	}
	String fruit = request.getParameter("fname");
	list.add(fruit);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
</head>
<body>
	<script>
		alert("<%=fruit%>이(가) 추가되었습니다."); 
		history.go(-1)
	</script>
	<%-- alert("<%=fruit%>    ");체크  --%>

</body>
</html>