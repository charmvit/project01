package iedu.board;

import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardController extends HttpServlet {
	//	��û�� ���� ������ Ŭ������ ������ ���� �� �÷���
	HashMap		map = new HashMap();
	public void init(ServletConfig config) throws ServletException {
		//	� ��û�� ������ ������ ���������� �̸� ����� ���� �̰��� ����ϸ� �ȵɱ�?
		try {
			//	����� Ŭ������ �ε��Ѵ�.
			Class	a = Class.forName("iedu.board.BoardList");
			Class	b = Class.forName("iedu.board.BoardInsert");
			Class	c = Class.forName("iedu.board.BoardDetail");
			Class	d = Class.forName("iedu.board.BoardModify");
			Class	e = Class.forName("iedu.board.BoardDelete");
			Class	f = Class.forName("iedu.board.BoardInsertForm");
			Class	g = Class.forName("iedu.board.BoardReWrite");
			Class	h = Class.forName("iedu.board.BoardModifyForm");
			//	new �� ������ ��Ų��.
			Object		a1 = a.newInstance(); 
			Object		b1 = b.newInstance(); 
			Object		c1 = c.newInstance(); 
			Object		d1 = d.newInstance(); 
			Object		e1 = e.newInstance();
			Object		f1 = f.newInstance();
			Object		g1 = g.newInstance();
			Object		h1 = h.newInstance();
			
			//	�̰��� ���߿� ����ϱ� ���ؼ� Map�� ����� ���´�.
			map.put("/Board/BoardList.bbs", a1);
			map.put("/Board/BoardInsert.bbs", b1);
			map.put("/Board/BoardDetail.bbs", c1);
			map.put("/Board/BoardModify.bbs", d1);
			map.put("/Board/BoardDelete.bbs", e1);
			map.put("/Board/BoardInsertForm.bbs", f1);
			map.put("/Board/BoardReWrite.bbs", g1);
			map.put("/Board/BoardModifyForm.bbs", h1);
		}
		catch(Exception e) {
			
		}
	}
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, java.io.IOException {
		//	�� �Լ��� get ������� ��û�ϸ� ����Ǵ� �Լ��̰�
		doService(req, resp);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, java.io.IOException {
		//	�� �Լ��� post ������� ��û�ϸ� ����Ǵ� �Լ��̴�.
		doService(req, resp);		
	}
	//	�̰���  get, post�϶� ���ÿ� ����Ǵ� �Լ��� ������
	public void doService(HttpServletRequest req, HttpServletResponse resp) {
		String		view = "";			//	���� ������ �並 ����� �غ�
		//	�̰����� ������
		//		��û ������ �м��ؼ�
		//	1.	��� ��û�� ���Դ��� Ȯ���Ѵ�.
		String		request = req.getRequestURI();
		//		�� �Լ��� ��û ������ �˾Ƴ��� �Լ��̴�.
		String		domain = req.getContextPath();
		//		�� �Լ��� ��û ������ ���������� ������ �κ��� �˼� �ִ�.
		
		//	�� �ΰ����� �����ؼ�	���� ��û ������ �˾Ƴ� �� �ִ�.
		String		realReq = request.substring(domain.length());
//		System.out.println(request);
//		System.out.println(domain);
//		System.out.println(realReq);		//	/Board/BoardList.bbs
		
		//	��û�� ������ �̿��ؼ� ����� Ŭ������ �����ּ���.
		BoardMain	target = (BoardMain) map.get(realReq);
		//	���� �� Ŭ������ �����ؼ� ���� �л�����.
		//	�� ���� ������ �ִ� ���� �Լ��� ȣ���ϴ� ���̴�.
		//	�̷ν� ���� ��Ʈ�ѷ��� ��û�� ���� ���ϴ� ���� �����ϰ� �Ǵ� ���̴�.
		view = target.action(req, resp);
		//	���� ���� ������ ������ �信�� ��ó���� ��Ź�ؾ� �Ѵ�.
		//	��� ���� ������ ����� ���α׷��̴�.		��� �� ������ JSP�� �Ǿ�� �Ѵ�.
		//	������ JSP �� �� ������ ������ �ִ� ������ ������ �� �ִ� �����̴�.
		//	�������� �� �乮���� ������ �޶�� ��Ź�ؾ� �Ѵ�.
		
		//	view ��� �������� ����� �� ���α׷�(JSP ���α׷��� �̸�)�� ���Ǿ� �ִ�.
		RequestDispatcher	dis = req.getRequestDispatcher(view);
		try {
			dis.forward(req,  resp);
		}
		catch(Exception e) {}
	}
	public void destroy() {
		
	}
}
