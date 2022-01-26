package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class GetMethodQuiz05 extends HttpServlet{
	
	   public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html"); //html문서로 해석을 해야한다는 걸 알려줌.
				
			int number = Integer.valueOf(request.getParameter("number"));
			PrintWriter out= response.getWriter();
		
			out.print("<html><head><title>구구단</title><body><ul>");
			
			for(int i = 1; i <= 9 ; i++) {
				//<li>5 X 1 = 5</li>
				out.print("<li>" + number + " X " + i + " = " + (number * i) + "</li>");
			}
			out.print("</ul></body></html>");
			
	   }

}
