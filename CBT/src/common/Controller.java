package common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exam.ExamCommandCreate;
import exam.ExamCommandCreateForm;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<String, Command>();

	public Controller() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// 해시맵 구조 put 메소드를 이용하여 작업
		// cont에 url과 실행 class(command)를 정의,매핑하는 부분
		
		//시험등록폼호출
		cont.put("/ExamCreateForm.do", new ExamCommandCreateForm());		
		//시험등록
		cont.put("/ExamCreate.do", new ExamCommandCreate());
		
//		//수정
//		cont.put("/", new());
//		
//		//삭제
//		cont.put("/", new());
//		
//		//단건조회
//		cont.put("/", new());
//		
//		//목록조회
//		cont.put("/", new());

		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실행할 class객체를 찾아주는 부분_get메소드 이용
		request.setCharacterEncoding("utf-8"); // 객체 인코딩 한글로

		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		System.out.println(uri);
		System.out.println(context);
		System.out.println(path);
		
		Command commandImpl = cont.get(path);
		String page = commandImpl.execute(request, response);
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);
		
	}

}
