<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, iedu.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
<%--
	��� ���⸦ �����
 --%>
 <%
 	//	���� �˷��� �����͸� ������.
 	ArrayList		list = (ArrayList) request.getAttribute("DATA");
 	PageInfo		pInfo = (PageInfo) request.getAttribute("PINFO");
 //	�𵨿��� �Ѱ��� ���� �����ΰ��� ���� �޴� ��ĵ� �޶�����.
 //	��		�𵨿���		session.setAttribute();	�� �ѱ��
 //			��������		session.getAttribute()�� �޴´�.
 %>
		<table border="1" width="80%" align="center">
			<tr>
				<th>��ȣ</th>
				<th>����</th>
				<th>�۾���</th>
				<th>�ۼ���</th>
				<th>��ȸ��</th>
			</tr>
<%--
	for(int i = 0; i < list.size(); i++) {
		HashMap	map = (HashMap) list.get(i);	
--%>
		<c:forEach var="temp" items="${DATA}">
			<tr>
				<td>${temp.NO}</td>
				<td>
<%--
	GET ������� ��û�� �� �Ķ����		��û����?Ű��=������&Ű��=������
--%>				
					<a href="../Board/BoardDetail.bbs?oriNO=${temp.NO}">${temp.TITLE}</a>
				</td>
				<td>${temp.ID}</td>
				<td>${temp.DATE}</td>
				<td>${temp.HIT}</td>
			</tr>
<%--
	}
--%>	</c:forEach>
 		</table>
<%--
	��Ÿ �ΰ����� ����� �����.
	��Ϻ��� ���¿��� �ʿ��� �ΰ����� ����� �۾��� ���߸� ����� �ִ� ���̴�.
 --%> 
		<table border="1" width="80%" align="center">
			<tr>
				<td align="center">
					<a href="../Board/BoardInsertForm.bbs">�۾���</a>
				</td>
			</tr>
		</table>
<%--	������ �̵� ��� �����
		[1][2][3][4][5]
 --%>	
 		<table	 border="1" width="80%" align="center">
 			<tr>
 				<td align="center">
<% 		
 		if(pInfo.startPage == 1) {
%>
 			[����]
<%
 		}
 		else {
%>
 			[<a href="../Board/BoardList.bbs?nowPage=<%= pInfo.startPage - 1 %>">����</a>]
<%
 		}				
		for(int i = pInfo.startPage; i <= pInfo.endPage; i++) {
			if(i == pInfo.nowPage) {				
%>
				[<%= i %>]
<%				
			}
			else {
%>				
				[<a href="../Board/BoardList.bbs?nowPage=<%= i %>"><%= i %></a>]
<%
			}	
		}
		if(pInfo.endPage == pInfo.totalPage) {
%>
				[����]
<%
		}
		else {
%>		
 			[<a href="../Board/BoardList.bbs?nowPage=<%= pInfo.endPage + 1 %>">����</a>]		
<%
		}
%>
				</td>
			</tr>
		</table>
	</body>
</html>
