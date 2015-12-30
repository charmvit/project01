<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//웹은 우리가 제작할 때는 하이퍼 링크를 이용해서 접근하도록 제작한다.
	//하지만 검색 결과등을 이용할 경우에는 직접 주소를 치고 들어오는 경우도 존재한다.
	//이 경우에는 사용자의 상태가 원하지 않는 상태일 수도 있다.
	//	예> 로그인을 해야만 방명록을 이용할 수 있는데.. 세션이 깨질 경우 문제 발생. 로그인 안해도 들어올 수 있음.
	//결론 이 페이지를 사용할 수 있는 권한이 있는지를 매번 점검을 해주어야 한다.
	String id =(String)session.getAttribute("ID");
	
	if(id==null||id.length()==0){
		response.sendRedirect("../Member/LoginForm.jsp");
	}
    //	할일
	//		알려준 방명록 내용을 받는다.
	String	body = request.getParameter("body");	
	//		글쓴이를 알아낸다.
	//<input text가 disable로 되어 있으면 이 데이터는 서버에 오지 않는다.(중요)
	//그러므로 글쓴이는 다른 방식으로 알아낼 수 밖에 없다.
	//다행히도 우리는 글쓴이 아이디를 세션에 기억해 놓았다.
	//String id=(String)session.getAttribute("ID");
	//		글을 등록한다
	GuestDao dao = new GuestDao();
	dao.insertGuest(id,body);
	dao.close();
	//목록보기를 다시 요청한다.
	response.sendRedirect("GuestList.jsp");
%>
</body>
</html>