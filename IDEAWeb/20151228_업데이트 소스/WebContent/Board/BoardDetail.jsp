<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
<%
	//	�𵨿��� �Ѿ�� �����͸� �˾Ƴ���.
	//		�𵨿�����		setAttribute()�� �ѱ��
	//		�信����			getAttribute()�� �޴´�.
	HashMap	map = (HashMap) request.getAttribute("DATA");
%>

<%--
	������ �Խù��� �󼼺��� ������ ����ϰ�
 --%>
		<table width="50%" border="1" align="center">
			<tr>
				<td>�۹�ȣ</td>
				<td><%= map.get("NO") %></td>
				<td>��ȸ��</td>
				<td><%= map.get("HIT") %></td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td><%= map.get("WRITER") %></td>
				<td>�ۼ���</td>
				<td><%= map.get("DATE") %></td>
			</tr>
			<tr>
				<td>����</td>
				<td colspan="3"><%= map.get("TITLE") %></td>
			</tr>
			<tr>
				<td>����</td>
				<td colspan="3"><%= map.get("CONTENT") %></td>
			</tr>
			<tr>
				<td colspan="4">
				<%--�ʿ��� ��� ��>	��Ϻ���, �����ϱ�,......--%>
					<a href="BoardList.bbs">��Ϻ���</a>
<%--
	����	��û�� �����ϴ� ���
			1.	���� ��û���� ó���ϴ� ���
				http://localhost:8080/IDEAWeb/Board/BoardDetail.bbs		���
			
			2.	��� ��û���� ó���ϴ� ���
				���� ���¸� �������� �ؼ� �޶��� �κи� ����ϴ� ���
				��>	���� ����		http://localhost:8080/IDEAWeb/Board/BoardDetail.bbs
						��û ����		http://localhost:8080/IDEAWeb/Board/BoardList.bbs
						
				<a href="BoardList.bbs">	
			
				��>	���� ����		http://localhost:8080/IDEAWeb/Board/BoardDetail.bbs
						��û ����		http://localhost:8080/IDEAWeb/Member/LoginProc.bbs
			
				<a href="../Member/LoginProc.bbs">
				
				
				�ǹ������� ��� ��û�� �ξ��� ���� ����Ѵ�.
				�ֳ��ϸ� �����ּҴ� �ּҰ� ����Ǹ� ��� ��û�� �ٽ� �����ؾ� �ϱ� �����̴�.
 --%>



				</td>
			</tr>
		</table>
<%--
	�� �Խù��� ������ ����� �����ְ�
--%>

<%--
	��۾��� �� �����ְ�
--%>
	</body>
</html>