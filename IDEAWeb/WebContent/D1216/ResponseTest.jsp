<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
나는 잘 생겼다.

<%
//위의 내용은 데이터베이스에 기록하는 소스라고 가정하자.

//	서버가 강제로 요청을 변경한다.
response.sendRedirect("RedirectTest.jsp");
%>
</body>
</html>