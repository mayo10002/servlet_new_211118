<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jquery : bootstrap, datepicker -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>  

        <!-- bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
	header {height:80px; background-color:orange;}
	menu {background-color:orange; color:white;}
	article {background-color:white; border: 1px solid orange;}
	
	.product-price {font-size:small;}
	.username {font-size:small; color:orange;}
	footer{height:80px; font-size:small;}
</style>
</head>
<body>
<% 
MysqlService mysql = MysqlService.getInstance();
mysql.connection();

String selectQuery1 = "select * from `seller`";
ResultSet result1 = mysql.select(selectQuery1);

String selectQuery2 = "select * from `used_goods` order by `id` desc";
ResultSet result2 = mysql.select(selectQuery2);

// > 이거 안됨! mysql join문으로 풀자
%>
	<div class="container bg-warning">
		<header class="bg-danger text-center">
			<h1 class="text-white">HONG당무 마켓</h1>
		</header>
		<nav>
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="quiz03template.jsp" class="nav-link">리스트</a></li>
				<li class="nav-item"><a href="" class="nav-link">물건 올리기</a></li>
				<li class="nav-item"><a href="#" class="nav-link">마이 페이지</a></li>
			</ul>
		</nav>
		<section>
			<article class="d-flex flex-wrap justify-content-around ">
				<% while(result2.next()){  %>
				<div>
					<div><img src="<%=result2.getString("pictureUrl") %>" alt="사진" width="200" height="150"></div>
					<div class="font-weight-bold"><%=result2.getString("title") %></div>
					<div class="text-secondary product-price"><%=result2.getInt("price") %>원</div>
					<div class="username"><%=result1.getString("nickname") %></div>
				</div>
				
				<% } %>
			</article>
		</section>
		<footer class="text-center text-secondary bg-primary">Copyright 2019. HONG All Rights Reserved.</footer>
	</div>
	
<% mysql.disconnection(); %>
</body>
</html>