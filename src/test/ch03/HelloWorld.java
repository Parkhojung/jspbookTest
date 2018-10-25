package test.ch03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "헬로우월드", urlPatterns = { "/HelloWorld" })
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		request.setCharacterEncoding("UTF-8");
 		
 		PrintWriter out = response.getWriter();

 		out.println("<HTML>");
 		out.println("<HEAD>");
 		out.println("</HEAD>");
 		out.println("<BODY>");
 		int list[] = {1,2,3,4,5,6,7};
 		for(int i :list) {
 			out.println(i);
 		}
 		out.println("</BODY>");
 		out.println("</HTML>");
 	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
