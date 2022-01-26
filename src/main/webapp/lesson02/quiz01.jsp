<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	// 1번.
	//필드
	private int sum = 0;
	private int n;
	//메소드
	public int getSum(){
		this.n = 7;
		for(int i = 1; i <= this.n;i++){
			sum+= i;
		}
		return this.sum;
	}
%>
<b>1번 답:</b><%= sum %>
<%
	// 2번.
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for(int i = 0; i < scores.length; i++){
		sum+= scores[i];
	}
	double average = (double)sum / scores.length;
%>

<b>2번 답</b> <%=average %>

<%
import java.util.List;
import java.util.ArrayList; //???
		
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});


%>


</body>
</html>