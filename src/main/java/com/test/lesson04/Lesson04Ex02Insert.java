package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/user_insert")
public class Lesson04Ex02Insert extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//request params 
		
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		//DB 연결
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		//insert 쿼리 수행
		String insertQuery = "insert into `new_user`(`name`, `yyyymmdd`, `introduce`,`email`)"
				+ "values(' " + name  + " ', ' "+yyyymmdd + " ','" +introduce+ "','" + email + " ');";
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//DB연결 해제
		mysqlService.disconnection();
		
		//리다이렉트 redirect
		response.sendRedirect("/lesson04/ex02_1.jsp");
	}
}
