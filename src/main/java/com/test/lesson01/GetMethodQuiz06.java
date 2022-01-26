package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class GetMethodQuiz06 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		//request > 서버 > response (json)
			/*
			 * {
    addtion: 1570,
    subtraction: 1430,
    multiplication: 105000,
    division: 21
}*/
		int number1 = Integer.valueOf(request.getParameter("number1"));
		int number2 = Integer.valueOf(request.getParameter("number2"));
		PrintWriter out = response.getWriter();
//		out.println("addtion: " + (number1 + number2));
//		out.println("subtraction: " + (number1 - number2));
//		out.println("multiplication: " + (number1 * number2));
//		out.println("division: " + (number1 / number2));
	
		//json
		out.print("{\"addtion\":" + (number1 + number2) + ",\"subtraction\":" + (number1 - number2)
				+ ",\"multiplication\":" + (number1 * number2) + ",\"division\":" + (number1 / number2) +"}");
		
	}
	
}
