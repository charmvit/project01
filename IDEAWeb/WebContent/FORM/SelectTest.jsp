<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="POST action="Result.jsp">
		<select name="kind" size="3">
			<option value="소나타">소나타</option>
			<option value="티코">티코</option>
			<option value="벤츠">벤츠</option>
			<option value="닛산">닛산</option>
			<option value="기아">기아</option>
			
		</select>
		<textarea name="area" rows="10" cols="50"></textarea>
		<input type="submit" value="보내기">	
	
	</form>

</body>
</html>