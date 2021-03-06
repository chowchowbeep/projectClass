package co.yedam.app.boardAjax;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.board.BoardDTO;
import co.yedam.app.common.Command;
import net.sf.json.JSONArray;

public class AjaxBoardList implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		List<BoardDTO> list = dao.selectList();
		//자바 객체 -> JSON string 
		String result = JSONArray.fromObject(list).toString(); //new.sf.json import
		return "ajax:"+result; //list를 toStirng으로 형변환하여 ajax타입으로 넘겨줌
		
		
	}

}
