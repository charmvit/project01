<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//할 일
	//로그인을 했을 때 주어진 모든 정보(세션에 있는 정보)를 삭제시키고
	session.removeAttribute("ID");
	session.removeAttribute("NAME");
	session.removeAttribute("NICK");

%>
</body>
</html>