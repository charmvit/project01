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
	//1.���ؽ�Ʈ �н��� �˾Ƴ���.
	//���ؽ�Ʈ �н��� Ŭ���̾�Ʈ�� � ������� ��û�� �ߴ����� �˾Ƴ��� ��
	//String path = request.getContextPath();
	//out.println("���ؽ�Ʈ �н� = "+path+"<br>");
	//2.��û ����� �˾Ƴ���.
	//String method = request.getMethod();
	//out.println("��û ��� ="+method + "<br>");
	
	//����
	// �����(Ŭ���̾�Ʈ)�� ��ȣ�� �˷��ָ� �ش� ��ȣ�� ���� ����� �̸��� ����ϴ� ������ ������.
	// �������� �����ͺ��̽��� 9���� �����Ͱ� �ִٰ� ������ �޶�.
	String[] names={"�¿�","ȿ��","���","����","����","�ظ�","����","���","Ƽ�Ĵ�"};
	//����ڰ� ��ȣ�� �˷��ֱ�� ����ߴµ� ?num=$ ������ Ű ��
	//String strNum =request.getParameter("num");
	//int num =Integer.parseInt(strNum);
	
	//������ ���̽���
	/*
	Enumeration enm = request.getParameterNames();
	while(enm.hasMoreElements()){
		String key = (String)enm.nextElement();
		out.println(key + "<br>");
	}
	*/
	String[] name = request.getParameterValues("num");
	for(int i=0;i<name.length;i++){
		int num = Integer.parseInt(name[i]);
		out.println("���� ���� �ҳ�ô� ��� =" + names[num]+"�̱���<br>");
	}
	//	�����ͺ��̽� �߿��� ������� �Խù��� ��ȣ�� �˷��ָ� �� �Խù��� �����ִ� ���̴�. 

%>

</body>
</html>