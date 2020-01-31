package co.yedam.app.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class getJSON
 */
@WebServlet("/getJSON.do")
public class getJSON extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public getJSON() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8"); //json은 html혹은 plain으로 받아옴
		PrintWriter out = response.getWriter();
		int no =1;
		String name="홍길동";
		//String result = "{\"no\:" + no + ", \"name \:\" +name + "}";
		out.print("{\"no\":1,\"name\":\"홍길동\"}"); //서버쪽에서 JSON을 넘겨줌
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		
	}

}
