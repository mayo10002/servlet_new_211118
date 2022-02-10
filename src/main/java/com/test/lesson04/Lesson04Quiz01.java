package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Lesson04Quiz01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		// DB 접속 연결
				MysqlService mysql = MysqlService.getInstance();
				mysql.connection(); // DB 연결
				
				//insert query 
				String insertQuery = "insert into `real_estate` ( `realtorId`, `address`, `area`, `type`, `price`,`rentPrice`)"
						+ "values (3, '헤라펠리스 101동 5305호', 350 , '매매', 1500000, null );";
				
					try {
						mysql.update(insertQuery);
					} catch (SQLException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				
				// select query 
				String selectQuery = "select * from `real_estate`"
						+ "order by `id` desc;";
				// 결과 출력
				try {
					PrintWriter out = response.getWriter();
					ResultSet resultSet = mysql.select(selectQuery);
					
					while(resultSet.next()) { // 결과 행이 있는 동안 수행
						out.println(resultSet.getInt("id"));
						out.println(resultSet.getInt("id"));
						out.println(resultSet.getString("title"));
						out.println(resultSet.getString("description"));
						out.println(resultSet.getInt("price"));
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				// DB 접속 연결 해제
				mysql.disconnection();
	}
}
