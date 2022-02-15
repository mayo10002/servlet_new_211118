package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class Lesson04Quiz02Insert extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");

		String name = request.getParameter("name");
		String url = request.getParameter("url");

		// DB 접속 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection(); // DB 연결

		// 쿼리 수행
		String insertQuery = "insert into `webpage` (`name`,`url`)" + "values('" + name + "','" + url + "');";

		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// DB 접속 연결 해제
		mysqlService.disconnection();

		// 목록 화면 이동
		response.sendRedirect("/lesson04/quiz02_1.jsp");
	}
}
