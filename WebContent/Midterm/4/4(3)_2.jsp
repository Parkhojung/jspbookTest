<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% SimpleDateFormat f = new SimpleDateFormat("YYYY-MM-dd HH:mm"); %>
<html>
<head><title>로그인</title></head>
<body><h2>Hello World</h2>
Today's date and time is <%=f.format(new java.util.Date()) %></body>
</html>