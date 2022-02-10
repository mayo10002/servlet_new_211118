<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="d-flex mt-3 my-3 align-items-center">
	<!-- 로고 영역 -->
	<h3 class="logo col-2">
		<a href="template.jsp" class="text-success">Melong</a>
	</h3>

	<!-- 검색 영역 -->
	<div class="searchbox d-flex col-9">
		<form method="get" action="/lesson03/quiz02/info_template.jsp">
		<div class="input-group">
			<input type="text" class="form-control col-6" name="search">
			<div class="input-group-append">
				<input type="submit" class="btn btn-success" value="검색">
			</div>
		</div>
		</form>
	</div>
</header>