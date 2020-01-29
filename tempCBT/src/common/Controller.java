package common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exam.ExamCommandCreate;
import exam.ExamCommandCreateForm;

@WebServlet("/") 
//localhost/model1/ ///.do
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<String, Command>();


	public void init(ServletConfig config) throws ServletException {
		// 해시맵 구조 put 메소드를 이용하여 작업
		// cont에 url과 실행 class(command)를 정의,매핑하는 부분
		// CRUD
		//cont.put("/index.do", new IndexCommand()); // 홈페이지 호출
		
		//시험등록폼호츌
		cont.put("/examForm", new ExamCommandCreateForm());
		
		//시험등록폼제출
		cont.put("/examSubmit", new ExamCommandCreate());
		
		//수정
		
		//삭제
		
		//상세보기
		
		//목록_ .do 생략가능
		
		
		//수정폼_ 수정폼과 등록폼 한 세트로
		
		
		//등록폼
		
		//member
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 실행할 class객체를 찾아주는 부분_get메소드 이용
		request.setCharacterEncoding("utf-8"); // 객체 인코딩 한글로

		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		
		//로그처리
		System.out.println("path="+path);
		
		//권한체크(로그인체크)
		

		Command commandImpl = cont.get(path); //실행클래스를 선택
		String page = null;
		response.setContentType("text/html; charset=UTF-8");
		
		//url 체크 후 forward
		if(commandImpl !=null) {
			 page = commandImpl.execute(request, response);
			 request.getRequestDispatcher(page)
					.forward(request, response);
		} else {
			response.getWriter().append("잘못된 요청");
		}
		
		
	}

}
