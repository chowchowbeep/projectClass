package exam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class ExamCommandCreate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ExamDTO dto = new ExamDTO();
		dto.setExamName((String)request.getParameter("Tname"));
		dto.setQuestCount(Integer.parseInt(request.getParameter("Qcnt")));
		dto.setExamTime(Integer.parseInt(request.getParameter("Ttime")));
		dto.setQuestGroup((String)request.getParameter("subject"));
		dto.setExamDesc((String)request.getParameter("desc"));
		dto.setExamType((String)request.getParameter("Ttype"));
		
		ExamDAO dao = new ExamDAO();
		int r = dao.insert(dto);
		
		//request.setAttribute("r", r);
		
		return "list.jsp";
	}

}
