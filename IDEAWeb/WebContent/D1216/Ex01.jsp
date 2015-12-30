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
map.put("홍길동","홍길동은 조선 시대 후기 허균이 지은 이상 국가에 대한 염원을 담은 소설이다");
map.put("허균","조선시대 정치가이며 서얼 출신 학자임");
map.put("이순신","임진왜란시 외적을 물리치는데 큰 업적을 남긴 장군이다.");
map.put("김구","일제 침략기때 구국운동을 한 인물이다.");
map.put("안창호","일체 식민지때 계몽 운동에 앞장선 인물이다.");

String	key = request.getParameter("name");
String	value = (String) map.get(key);

%>
	<dl>
		<dt><%= key %>	</dt>
		<dd><%= value %></dd>
	</dl>

</body>
</html>