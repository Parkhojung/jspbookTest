<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
</head>
	<%	
		request.setCharacterEncoding("UTF-8");
		ArrayList<String> list = (ArrayList)session.getAttribute("list");
		if(list == null){
			list = new ArrayList<String>();
			session.setAttribute("list",list);
		}
	
		list.add(request.getParameter("fid"));
	%>
<body>
	<script>
		alert("<%=request.getParameter("fid")%>이(가) 추가되었습니다.");
		history.go(-1);
	</script>
	
</body>
</html>