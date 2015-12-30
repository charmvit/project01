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
	//	모델에서 넘어온 데이터를 알아낸다.
	//		모델에서는		setAttribute()로 넘기고
	//		뷰에서는			getAttribute()로 받는다.
	HashMap	map = (HashMap) request.getAttribute("DATA");
%>

<%--
	선택한 게시물의 상세보기 내용을 출력하고
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
				<td colspan="4">
				<%--필요한 기능 예>	목록보기, 수정하기,......--%>
					<a href="BoardList.bbs">목록보기</a>
<%--
	참고	요청을 지정하는 방법
			1.	절대 요청으로 처리하는 방법
				http://localhost:8080/IDEAWeb/Board/BoardDetail.bbs		방식
			
			2.	상대 요청으로 처리하는 방법
				현재 상태를 기준으로 해서 달라진 부분만 명시하는 방법
				예>	현재 상태		http://localhost:8080/IDEAWeb/Board/BoardDetail.bbs
						요청 내용		http://localhost:8080/IDEAWeb/Board/BoardList.bbs
						
				<a href="BoardList.bbs">	
			
				예>	현재 상태		http://localhost:8080/IDEAWeb/Board/BoardDetail.bbs
						요청 내용		http://localhost:8080/IDEAWeb/Member/LoginProc.bbs
			
				<a href="../Member/LoginProc.bbs">
				
				
				실무에서는 상대 요청을 훨씬더 많이 사용한다.
				왜냐하면 절대주소는 주소가 변경되면 모든 요청을 다시 수정해야 하기 때문이다.
 --%>



				</td>
			</tr>
		</table>
<%--
	그 게시물에 쓰여진 댓글을 보여주고
--%>

<%--
	댓글쓰기 폼 보여주고
--%>
	</body>
</html>