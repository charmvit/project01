<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
//내장 객체도 자바적인 변수 이므로 자바적인 요소를 사용하는 곳에서 사용해야 한다.
//내장 객체도 반드시 스크립트 릿 상태에서 사용해야 한다.
	String name ="홍길동";
	int a = 100;
	out.println("<table border='1'>");//HTML에 <table> 이 만들어진다.
	out.println("<tr>");
	out.println("<td>");
	//out.println("테스트1");
	out.println(name);
	out.println("</td>");
	out.println("<td>");
	out.println(a);
	//out.println(name);
	out.println("</td>");
	out.println("</tr>");
	out.println("</table>");
%>
<table border=1>
<%
	for(int i=2;i<10;i++){
		out.println("<tr>");
		for(int j=0;j<10;j++){
			out.println("<td>");
			out.println(i+"*"+j+"="+i*j);
			out.println("</td>");
		}
		out.println("</tr>");
		//out.println("");
		
	}

%>

</table>
</body>
</html>