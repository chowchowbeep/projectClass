package co.yedam.app.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import apitest.apiTestCommand;
import co.yedam.app.board.BoardCommandCreateForm;
import co.yedam.app.board.BoardCommandSelectList;
import co.yedam.app.board.Fileupload;
import co.yedam.app.boardAjax.AjaxBoardList;
import co.yedam.app.boardAjax.AjaxBoardOne;
import co.yedam.app.users.command.DeleteUsers;
import co.yedam.app.users.command.GetUsers;
import co.yedam.app.users.command.GetUsersList;
import co.yedam.app.users.command.InsertUsers;
import co.yedam.app.users.command.ManageUsers;
import co.yedam.app.users.command.UpdateUsers;

@WebServlet("*.do")
//localhost/model1/ ///.do
public class NewFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<String, Command>();

	public void init(ServletConfig config) throws ServletException {
		// 해시맵 구조 put 메소드를 이용하여 작업
		// cont에 url과 실행 class(command)를 정의,매핑하는 부분
		// CRUD
		// cont.put("/index.do", new IndexCommand()); // 홈페이지 호출

		// board

		// 등록

		// 수정

		// 삭제

		// 상세보기

		// 목록_ .do 생략가능
		cont.put("/boardList.do", new BoardCommandSelectList());

		// 수정폼_ 수정폼과 등록폼 한 세트로

		// 등록폼
		cont.put("/boardCreateForm.do", new BoardCommandCreateForm());

		// member

		// ajax 컨트롤러는 별도로 생성할 것을 권장함

		// ajax list
		cont.put("/ajaxBoardList.do", new AjaxBoardList());

		// ajax 단건
		cont.put("/ajaxBoardOne.do", new AjaxBoardOne());

		// 댓글 관리

		// 사용자 관리
		cont.put("/ManageUsers.do", new ManageUsers()); // 사용자 관리페이지
		cont.put("/ajax/InsertUsers.do", new InsertUsers());// 사용자등록 ajax
		cont.put("/ajax/UpdateUsers.do", new UpdateUsers());// 사용자수정 ajax
		cont.put("/ajax/DeleteUsers.do", new DeleteUsers());// 사용자삭제 ajax
		cont.put("/ajax/GetUsers.do", new GetUsers());// 사용자조회 ajax
		cont.put("/ajax/GetUsersList.do", new GetUsersList());// 사용자전체조회 ajax
		
		cont.put("/ajax/apiTestCommand.do", new apiTestCommand());
		
		
		
		//파일업로드
		cont.put("/Fileupload.do", new Fileupload());
		
		

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 실행할 class객체를 찾아주는 부분_get메소드 이용
		request.setCharacterEncoding("utf-8"); // 객체 인코딩 한글로

		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());

		// 로그처리
		System.out.println("path=" + path);

		// 권한체크(로그인체크)

		Command commandImpl = cont.get(path); // 실행클래스를 선택
		String page = null;
		response.setContentType("text/html; charset=UTF-8");

		// url 체크 후 페이지 넘기기
		if (commandImpl != null) {
			page = commandImpl.excute(request, response);
			if (page != null && !page.isEmpty()) {
				if (page.startsWith("redirect:")) { // 넘기는 방식이 redirect일 경우
					String view = page.substring(9); // redirect이후에 진짜로 넘길 페이지의 문자
					response.sendRedirect(view);
				} else if (page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
				} else if (page.startsWith("script:")) { // 넘기는 방식이 script일 경우
					response.getWriter().append("<script>").append(page.substring(7)).append("</script>");
				} else {
					request.getRequestDispatcher(page) // 넘기는 방식이 forward(원래 기본값)
							.forward(request, response);
				}
			}
		} else {
			response.getWriter().append("잘못된 요청");
		}

	}

}