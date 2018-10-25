package test.ch03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "계산기 버전1", urlPatterns = { "/Calc1" })
public class Calc1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8"); 
		PrintWriter out = response.getWriter();
		
		int num1,num2,res;
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		String op = request.getParameter("op");
		
		res = calc(num1,num2,op);
		
		out.println(res);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private int calc(int n1, int n2, String op) {
		int res=0;
		if(op.equals("+"))res= n1+n2;
		if(op.equals("-"))res= n1-n2;
		if(op.equals("*"))res= n1*n2;
		if(op.equals("/"))res= n1/n2;
		return res;
	}
}
