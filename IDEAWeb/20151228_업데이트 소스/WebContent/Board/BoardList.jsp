<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, iedu.util.*" %>
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
<%
	for(int i = 0; i < list.size(); i++) {
		HashMap	map = (HashMap) list.get(i);	
%>
			<tr>
				<td><%= map.get("NO") %></td>
				<td>
<%--
	GET ������� ��û�� �� �Ķ����		��û����?Ű��=������&Ű��=������
--%>				
					<a href="../Board/BoardDetail.bbs?oriNO=<%= map.get("NO") %>"><%= map.get("TITLE") %></a>
				</td>
				<td><%= map.get("ID") %></td>
				<td><%= map.get("DATE") %></td>
				<td><%= map.get("HIT") %></td>
			</tr>
<%
	}
%>
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
