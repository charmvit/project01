<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//	모델에서 넘어온 데이터를 알아낸다.
	//	모델에서는		setAttribute()로 넘기고
	//	뷰에서는		getAttribute()로 받는다.
	HashMap	map = (HashMap) request.getAttribute("DATA");
	ArrayList	list = (ArrayList) request.getAttribute("LIST");
	//	현재 세션의 아이디를 알아낸다.
	String		id = (String) session.getAttribute("ID");
%>
<%--
	선택한 글 내용을 출력하고
 --%>
		<table width="50%" border="1" align="center">
			<tr>
				<td>글번호</td>
				<td><%= map.get("NO") %></td>
				<td>조회수</td>
				<td><%= map.get("HIT") %></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%= map.get("WRITER") %></td>
				<td>작성일</td>
				<td><%= map.get("DATE") %></td>
			</tr>
			<tr>
				<td>제목</td>
				<td colspan="3"><%= map.get("TITLE") %></td>
			</tr>
			<tr>
				<td>본문</td>
				<td colspan="3"><%= map.get("CONTENT") %></td>
			</tr>
			<tr>
				<td colspan="4" align="center">
				<a href="BoardList.bbs">목록보기</a>
				</td>
			</tr>
		</table>
</body>
</html>