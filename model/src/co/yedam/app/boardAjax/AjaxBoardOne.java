package co.yedam.app.boardAjax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.board.BoardDTO;
import co.yedam.app.common.Command;
import net.sf.json.JSONObject;

public class AjaxBoardOne implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//no파라미터 받기
		int no = Integer.parseInt(request.getParameter("no"));
		
		
		//단건조회
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = new BoardDTO();
		dto = dao.selectOne(no);
		
		
		//json 오브젝트를 toStirng으로. 단건이기 때문에 JOSNArray아닌 JSONObject
		String result = JSONObject.fromObject(dto).toString(); //new.sf.json import
		return "ajax:"+result; //컨트롤러에서 ajax: 이라는 글자는 제외하고 
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
