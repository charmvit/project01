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
//���� ��ü�� �ڹ����� ���� �̹Ƿ� �ڹ����� ��Ҹ� ����ϴ� ������ ����ؾ� �Ѵ�.
//���� ��ü�� �ݵ�� ��ũ��Ʈ �� ���¿��� ����ؾ� �Ѵ�.
	String name ="ȫ�浿";
	int a = 100;
	out.println("<table border='1'>");//HTML�� <table> �� ���������.
	out.println("<tr>");
	out.println("<td>");
	//out.println("�׽�Ʈ1");
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