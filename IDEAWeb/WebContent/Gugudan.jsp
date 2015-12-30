<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" style="width:100%">
<%
/* 자바적인 주석 명령 */
for(int i=2;i<10;i++){
%>
	<tr>
<%	
	for(int j=1;j<10;j++){
%>
		<td><%=i + "*"+ j+ "=" + (i*j)%></td>
<%
	}
%>
	</tr>
<%
}
%>
	</table>
</body>
</html>