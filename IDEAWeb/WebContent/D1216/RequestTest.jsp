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
	//1.컨텍스트 패스를 알아낸다.
	//컨텍스트 패스란 클라이언트가 어떤 방식으로 요청을 했는지를 알아내는 것
	//String path = request.getContextPath();
	//out.println("컨텍스트 패스 = "+path+"<br>");
	//2.요청 방식을 알아내자.
	//String method = request.getMethod();
	//out.println("요청 방식 ="+method + "<br>");
	
	//문제
	// 사용자(클라이언트)가 번호를 알려주면 해당 번호에 대한 사용자 이름을 출력하는 문서를 만들자.
	// 여러분은 데이터베이스에 9개의 데이터가 있다고 생각해 달라.
	String[] names={"태연","효린","써니","나영","지수","해리","누구","요요","티파니"};
	//사용자가 번호를 알려주기로 약속했는데 ?num=$ 형태의 키 값
	//String strNum =request.getParameter("num");
	//int num =Integer.parseInt(strNum);
	
	//데이터 베이스의
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
		out.println("보고 싶은 소녀시대 멤버 =" + names[num]+"이군요<br>");
	}
	//	데이터베이스 중에서 보고싶은 게시물의 번호를 알려주면 그 게시물을 보여주는 것이다. 

%>

</body>
</html>