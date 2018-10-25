<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>
<HEAD><TITLE>로그인</TITLE></HEAD>
<BODY><H2>Hello World</H2>
<%	SimpleDateFormat f = new SimpleDateFormat("YYYY-MM-dd HH:mm");
	out.print("Today's date and time is "+f.format(new Date()));
%></BODY>
</HTML>

<% 
 		out.println("<HTML>");
      	out.println("<HEAD><TITLE>로그인</TITLE></HEAD>");
      	out.println("<BODY><H2>Hello World</H2>");
		SimpleDateFormat e = new SimpleDateFormat("YYYY-MM-dd HH:mm");
		out.print("Today's date and time is "+e.format(new Date()));

	    out.println("</BODY>");
    	out.write("</HTML>");
      
 %>