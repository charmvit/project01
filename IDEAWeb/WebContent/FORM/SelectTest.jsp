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
			<option value="�ҳ�Ÿ">�ҳ�Ÿ</option>
			<option value="Ƽ��">Ƽ��</option>
			<option value="����">����</option>
			<option value="�ֻ�">�ֻ�</option>
			<option value="���">���</option>
			
		</select>
		<textarea name="area" rows="10" cols="50"></textarea>
		<input type="submit" value="������">	
	
	</form>

</body>
</html>