<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
<%!
	// 1번.
	//필드
	private int sum = 0; // 새로운 리퀘스트가 되더라도 머물러있게 하는 private선언문...
	//이걸 선언 안하면 새로고침할때마다 계속 더해진다.
	private int n;
	//메소드
	public int getNSum(){
		this.n = 50;
		for(int i = 1; i <= this.n; i++){
			sum+= i;
		}
		return this.sum;
	}
%>
<h1>1부터 50까지의 합은 <%= getNSum() %>입니다.</h1>
<%
	// 2번.
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for(int i = 0; i < scores.length; i++){
		sum+= scores[i];
	}
	double average = (double)sum / scores.length;
%>

<h1>평균 점수는 <%=average %> 입니다. </h1>

<%
//3번.
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
int score = 0;
for(int i = 0; i < scoreList.size(); i++){
	if ( scoreList.get(i).equals("O")){
		score += 100 / scoreList.size();
	}
}
%>
<h1>채점 결과는 <%= score %>점입니다.</h1>

<%
	//4.나이 구하기
	String birthDay = "20010820";
	String yearStr =birthDay.substring(0,4);
	/* out.print(yearStr); */
	
	int age = 2022 - Integer.parseInt(yearStr) + 1;

%>

<h1> <%= birthDay %>님의 나이는> <%=age %>세 입니다.</h1>

</body>
</html>