<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%--	
		이제 이 JSP 문서에 JSTL를 사용할 예정이다.
		그러면 이 JSP 문서에 JSTL를 사용하기 위한 태그 라이브러리 선언을 해주어야 한다.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
<%
	//	원래는 이 부분은 Model이 만들어서 제공해야 하는데.......
	//	모델이 해야 할 일을 여기서 한다고 가정하고 작업을 진행한다.	
	String		name = "Hong Gil Dong";	
	//	모델이 생산한 데이터를 뷰에게 줬다고 가정하자.
	request.setAttribute("name", name);
	request.setAttribute("age", 24);
	
	String[] names = {"홍길동","박아지","장독대","이기자","정말로"};
	request.setAttribute("names",names);
	
	ArrayList list = new ArrayList();
	list.add("가가가");
	list.add("나가가");
	list.add("다가가");
	list.add("라가가");
	list.add("마가가");
	list.add("바가가");
	list.add("사가가");
	list.add("아가가");
	list.add("자가가");
	request.setAttribute("LIST",list);
	String imsi ="테스트 하고 있다.";
	request.setAttribute("IMSI",imsi);
	
	HashMap map = new HashMap();
	map.put("IRUM","장국영");
	map.put("NAI",24);
	
	request.setAttribute("MAP",map);
	
%>
	<body>
<%--
	JSTL을 이용해서 모델이 생산 데이터를 이용해 보자
	1.	일반적인 출력
--%>
		<c:out value="Hello World"/>
		 당신의 이름은 ${name}  입니다.<br>
		 당신의 나이는 ${age * 2} 이군여
		<c:set var="temp" value="${'김명환'}"/>
		주인 이름은 ${temp}
		<c:set var = "count" value="${1}" />
<%--	누적 대입을 하는 방법은 다음과 같다. --%>
		<c:set var = "count" value="${count + 1 }" />
		현재 카운터는 ${count} 입니다.<br>
		
		<c:remove var="count" />
		현재 카운터는 ${count} 입니다.<br>
		<table width="50%" align="center" border="1">
	<c:forEach var="a" begin="1" end="5">
			<c:if test="${a % 2 eq 0 }">
			<tr bgcolor="red">
				<td>데이터</td>
			</tr>
			</c:if>
			<c:if test="${a %2 eq 1}">
			<tr bgcolor="yellow">
				<td>데이터</td>
			</tr>
			</c:if>
			
		</c:forEach>
		</table>
	
		<table width="50%" align="center" border="1">
			<c:forEach var="a" begin="1" end="5">
			<c:choose>
				<c:when test="${a%2 eq 0}">
			<tr bgcolor="blue">
				<td>데이터</td>
			</tr>
				</c:when>
				<c:otherwise>
			<tr bgcolor="pink">
				<td>데이터</td>
			</tr>
				</c:otherwise>
			</c:choose>
			
		</c:forEach>
		</table><br>
		<table width="50%" border='1' align="center">
			<c:forEach var = "item" items="${names}">
<%--	이제 배열에 있는 내용이 하나씩 나와서 지정한 변수(item)에 기억되면서
		반복될 것이다.
 --%>
 		<tr>
 			<td>${item}</td>
 		</tr>			
			</c:forEach>
		</table><br>
		<table width="50%" border='1' align="center">
			<c:forEach var = "temp" items="${LIST}">
 		<tr>
 			<td>${temp}</td>
 		</tr>			
			</c:forEach>
		</table>
	
		<table width="50%" border='1' align="center">
			<c:forEach var="temp" items="${LIST}" varStatus="sta">
			<c:if test="${sta.index % 2 eq 0}">
			<tr bgcolor="green">
				<td>${temp}</td>
			</tr>
			</c:if>
			<c:if test="${sta.index % 2 eq 1}">
			<tr bgcolor="gold">
				<td>${temp}</td>
			</tr>
			</c:if>
			</c:forEach>
		</table><br>
		<c:forTokens var="temp" items="${IMS}"delims=" ">
			${temp}<br>
		</c:forTokens>
		
		당신이 좋아하는 사람의 이름은 ${MAP.IRUM} 이구요<br>
		그 사람의 나이는 ${MAP.NAI} 입니다.<br>
		
	</body>
</html>

