<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- 1.데이터 빈 클래스를 사용할 수 있도록 new 시킨다.--%>
	<jsp:useBean class="iedu.data.LoginData" id="login" scope="page"/>
<%-- 2.set 함수를 실행한다.--%>
	<jsp:setProperty name="login" property="*"/>
<%-- 이제 클라이언트가 보내준 데이터가 데이터 빈 클래스에 변수에 기억되어 있다.--%>
	 
	당신의 이이디는 <%=login.getId()%>이군요.<br>
	당신의 비밀번호는 <%=login.getPass() %>이군요.<br>
	당신의 나이는 <%=login.getAge() %>이군요.<br>
	당신의 전호번호 <%=login.getPhone() %>이군요.<br>
	당신의 취미는 <%=login.getHobbyStr() %>이군요.<br>
</body>
</html>