<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add.jsp</title>
</head>
<%

	request.setCharacterEncoding("UTF-8");
	ArrayList<String> list = (ArrayList)session.getAttribute("list");
	if(list ==null){
		list = new ArrayList<String>();	
		session.setAttribute("list", list);
	}
	String product = request.getParameter("fid");
	list.add(product);
%>

<body>
	<script>
		alert("<%=product%>이(가) 추가되었습니다.");
		history.go(-1);
	</script>
</body>
</html>