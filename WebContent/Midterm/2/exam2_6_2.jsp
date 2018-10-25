<%@ page contentType="text/html; charset=UTF-8" %>
<%!
int num1, num2 = 0;
int result = 0;
String op = "";
public int calculator()  {
if(op.equals("+")) result = num1+num2;
else if(op.equals("-")) result = num1-num2;
return result;
}
%>
<%
if(request.getMethod().equals("POST"))  {
num1 = Integer.parseInt(request.getParameter("num1"));
num2 = Integer.parseInt(request.getParameter("num2"));
op = request.getParameter("operator");
}
%>
<HTML><HEAD><TITLE>계산기</TITLE></HEAD>
<BODY>
<FORM method="POST">
<INPUT type="text" name="num1" />
<SELECT name="operator">
<OPTION selected>+</OPTION>
<OPTION>-</OPTION>
</SELECT>
<INPUT type="text" name="num2" />
<INPUT type="submit" value="계산" />
</FORM>
<HR/>계산결과: <%=calculator() %>
</BODY>
</HTML>