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
	int num=0;
	//num++;
	for(int i=0;i<10;i++){
		out.print("count :");
		out.println(num++);
%>
<%--  	klf;dfg;g;d<br> --%>	
<%
	}
%>

</body>
</html>