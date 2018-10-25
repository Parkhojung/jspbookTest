<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="test.ch07.LoginBean" scope="page" />
<<jsp:setProperty property="*" name="login"/>

<!DOCTYPE html>
<html>
<head><title></title></head>
<body>
<div align="center">
	<h2>로그인 예제</h2>
	<hr>
	<%
		if(login.checkUser()){
			out.println("로그인 성공!");
		}else{
			out.println("로그인 실패!");
		}
	
	%>
	
	<hr>
	사용자 아이디:<jsp:getProperty name="login" property="userid"/>
	사용자 패스워드:<jsp:getProperty name="login" property="pwd"/>
</div>
</body>
</html>