<%@ page contentType="text/html; charset=UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
footer2.jsp
<HR>
	<%= request.getParameter("email") %>,
	<%= request.getParameter("tel") %>
	<br>
	<%
	out.println(request.getParameter("tel"));
	%>
