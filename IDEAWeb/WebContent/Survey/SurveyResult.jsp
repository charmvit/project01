<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//할일
	//먼저 데이터베이스 있는 내용을 알아낸다.
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	int[] daps = new int[4]; //각각의 항목에 있는 결과 값을 저장
	//JSP문서 안에서는  try 작업을 하지 않아도 무방하다.
	//왜냐하면 JSP 문서는 자동적으로 try 작업을 해 놓았기 때문이다.
	//하지만 그렇다고 try를 하지 않으면 예외가 발생할 때 예외의 원인을 파악하기가 어렵다.
	//그러므로 필요하다면 과거처럼 try 처리를 해주는 것이 좋다.
	try{
//		드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//	컨넥션
			con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.56.130:1521:orcl", 
														"scott", "tiger");
			//	스테이트먼트
			stmt = con.createStatement();
			//	질의실행
			String		sql = "SELECT * FROM survey";
			rs = stmt.executeQuery(sql);
			rs.next();
			daps[0] = rs.getInt("s_dap1");
			daps[1] = rs.getInt("s_dap2");
			daps[2] = rs.getInt("s_dap3");
			daps[3] = rs.getInt("s_dap4");
	}
	catch(Exception e){
			System.out.println(e);	
	}
	finally{
		stmt.close();
		rs.close();
		con.close();
	}
	//이것을 이용해서 각각의 항목의 백분율을 계산한다.
	//이 백분율을 이용해서 결과를보여준다.
	int total = 0;
	for(int i=0;i<daps.length;i++){
		total=total+daps[i];
	}
	//여기서는 소주점 이하는버릴 생각으로 int로 잡았다.
	int[] per = new int[4]; //각각의 항목의 백분율을 기억할 변수
	for(int i=0;i<daps.length;i++){
		per[i]=(int)(daps[i]*100/total);
	}
	//이 백분율을 이용해서 결과를 보여준다
	String[]	ex = {"태연", "한지민", "하연수", "김사랑"};
%>
	<table width="70%" border="1" align="center">
		<tr>
			<td colspan="3">
			세상에서 가장 이쁜 사람으로 크리스마스를 같이 보내고 싶은 사람은 누구입니까?
			</td>
		</tr>
<%
		for(int i=0;i<per.length;i++){
%>
			<tr>
<%--		<td width="10%">1.태연</td> --%>
			<td width="10%"><%= (i + 1) + " " + ex[i] %></td>
<%--			<td width="80%"> </td>	 --%>
			<td width="80%">
<%-- 	그래프를 그리는 방식(가장 고전적인 방식)
		비윫의 갯수만큼 그림을 옆으로 나열하면 그래프처럼 보일 것이다.
--%>
<%
			for(int j=0;j<per[i];j++){%><img src="../images/<%=(i+1)%>.png"><% } %>
			</td>
			<td width="10%"><%= per[i] %> %</td>
		</tr>
<%
		}	
%>	
	 	
		<tr>
			<td colspan="3" align ="center">
				<a href="SurveyList.jsp">설문조사 항목 보기</a>
			</td>
		</tr>
		
	</table>

</body>
</html>