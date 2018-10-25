<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	int num1,num2 = 0 ;
	int res =0;
	String op = "";
	
	public int cal(){
		if(op.equals("+")) res = num1+num2;
		else if(op.equals("-")) res = num1-num2;
		return res;
	}
%>
<%
if(request.getMethod().equals("POST")) {
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("op");
}
%>

<!DOCTYPE html>
<html><head><title>계산기</title></head>
<body>
<form method="POST">
	<input type="text"" name = "num1">
	<select name="op">
		<option selected>+</option>
		<option >-</option>
	</select>
	<input type ="text" name = "num2">
	<input type ="submit" value ="계산">
</form>
계산결과 <%=cal() %>
</body>
</html>