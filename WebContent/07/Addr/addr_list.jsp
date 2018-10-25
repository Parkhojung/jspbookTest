<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.ch07.*"%>
<jsp:useBean id="am" class="test.ch07.AddrManager" scope= "application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h2>주소록</h2>
	<a href="addr_form.html">주소 추가</a>
	
	<table border=1 width=500>
		<tr><td>이름</td><td>전화번호</td></tr>
		<%
			for(AddrBean ab: am.getAddrList()){
				out.print("<tr>");
				out.print("<td>"+ab.getUsername()+"</td>");
				out.print("<td>"+ab.getTel()+"</td>");
			} 
		%>
	</table>
</div>
</body>
</html>