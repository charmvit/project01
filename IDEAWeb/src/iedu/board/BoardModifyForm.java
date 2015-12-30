package iedu.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdbc.WebDB;

public class BoardModifyForm implements BoardMain {
	public String action(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("나는 수정 요청 함수이다.");
		String		strOriNO = req.getParameter("oriNO");
		int			oriNO = Integer.parseInt(strOriNO);
		String		title = req.getParameter("title");
		String		body = req.getParameter("body");
		HttpSession	session = req.getSession();
		String		writer = (String) session.getAttribute("ID");
	
		WebDB				db = null;
		Connection			con = null;
		PreparedStatement	pstmt = null;
		ResultSet					rs = null;
		HashMap					map = new HashMap();
		ArrayList					list  = new ArrayList();
		try {
			db = new WebDB();
			con = db.getCON();
			String sql = "SELECT * FROM ReBoard WHERE rb_NO = ?";
			pstmt = db.getPSTMT(con, sql);
			pstmt.setInt(1, oriNO);
			rs = pstmt.executeQuery();
			rs.next();
			map.put("NO", 			rs.getInt("rb_NO"));
			map.put("TITLE", 		rs.getString("rb_Title"));
			map.put("WRITER", 	rs.getString("rb_Writer"));
			//map.put("CONTENT", 	rs.getString("rb_Content"));
			body = rs.getString("rb_Content");
			body = body.replaceAll("\r\n", "<br>");
			map.put("CONTENT", 	body);
			map.put("DATE", 		rs.getDate("rb_Date"));
			//map.put("HIT", 			rs.getInt("rb_Hit"));
			db.close(rs);
			//
			sql = "SELECT * FROM ReReply WHERE rb_No = ? AND rr_isShow = 'Y' ORDER BY rr_No DESC";
			pstmt = db.getPSTMT(con, sql);
			pstmt.setInt(1, oriNO);
			rs = pstmt.executeQuery();
			//
			while(rs.next()) {
				HashMap		temp = new HashMap();
				temp.put("NO", rs.getInt("rr_NO"));
				temp.put("ORINO", rs.getInt("rb_NO"));
				temp.put("WRITER", rs.getString("rr_Writer"));
				String	tempBody = rs.getString("rr_Content");
				tempBody = tempBody.replaceAll("\r\n", "<br>");
				temp.put("BODY", tempBody);
				temp.put("DATE",  rs.getDate("rr_Date"));
								
				list.add(temp);
			}
			
		}
		catch(Exception e) {
			System.out.println("��� ��� ���� = " + e);
		}
		finally {
			db.close(pstmt);
			db.close(con);
		}
		//		�信�� ����� �����͸� �ݵ�� �����־�� �Ѵ�.
		req.setAttribute("ORINO", oriNO);
		req.setAttribute("TITLE", title);
		
		//		�並 �����Ѵ�.
		return "/Board/BoardModifyForm.jsp";
		
	}
}
