<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
//HashMap<String, String> map = new HashMap<String, String>();
HashMap	map = new HashMap();
map.put("ȫ�浿","ȫ�浿�� ���� �ô� �ı� ����� ���� �̻� ������ ���� ������ ���� �Ҽ��̴�");
map.put("���","�����ô� ��ġ���̸� ���� ��� ������");
map.put("�̼���","�����ֶ��� ������ ����ġ�µ� ū ������ ���� �屺�̴�.");
map.put("�豸","���� ħ���⶧ ������� �� �ι��̴�.");
map.put("��âȣ","��ü �Ĺ����� ��� ��� ���弱 �ι��̴�.");

String	key = request.getParameter("name");
String	value = (String) map.get(key);

%>
	<dl>
		<dt><%= key %>	</dt>
		<dd><%= value %></dd>
	</dl>

</body>
</html>