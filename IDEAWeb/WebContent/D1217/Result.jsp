<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- 1.������ �� Ŭ������ ����� �� �ֵ��� new ��Ų��.--%>
	<jsp:useBean class="iedu.data.LoginData" id="login" scope="page"/>
<%-- 2.set �Լ��� �����Ѵ�.--%>
	<jsp:setProperty name="login" property="*"/>
<%-- ���� Ŭ���̾�Ʈ�� ������ �����Ͱ� ������ �� Ŭ������ ������ ���Ǿ� �ִ�.--%>
	 
	����� ���̵�� <%=login.getId()%>�̱���.<br>
	����� ��й�ȣ�� <%=login.getPass() %>�̱���.<br>
	����� ���̴� <%=login.getAge() %>�̱���.<br>
	����� ��ȣ��ȣ <%=login.getPhone() %>�̱���.<br>
	����� ��̴� <%=login.getHobbyStr() %>�̱���.<br>
</body>
</html>