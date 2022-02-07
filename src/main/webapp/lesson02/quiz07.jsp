<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
		<h1>메뉴 검색</h1>
		<form method="post" action="/lesson02/quiz07_1.jsp">
			<div class="d-flex">
				<input type="text" class="form-control col-3" name = "keyword">
				<label class="ml-2 mt-2"> <input type = "checkbox" name="starPointFilter" value="true">
				4점 이하 제외</label>
			</div>
			
			<input type="submit" class="btn btn-success col-2" value="검색">
		</form>
	
	</div>
	
	
	<!-- 
	get/ post 차이점 : 식당이 서버라 하면
	주방에 대고 주문을 간단하게 이거 주세요! 하는 게 get
	식당: 인지 후 차려줌
	
	메뉴 하나 몇 개? 다른 메뉴는 몇 개? > 종이에 적어두는 거. 보통 입력할 때 
	그런데 다른 사람들에게 보여주고 싶지 않을 때. : Post
	어떻게 주문하느냐가 다른 것이다. 
	ㅇ
	 -->
</body>
</html>