<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	//����
	//�α����� �� ���� ���� ���� ���� CIO ��� Ű������ �����Ͱ� �ִ��� ���θ� ���� �Ǵ�
	//�α� �ƿ���?
	//CID��� Ű���� �����͸� ����� �� ���̴�.
	session.removeAttribute("CID");

	response.sendRedirect("LoginForm.jsp");

%>

</body>
</html>