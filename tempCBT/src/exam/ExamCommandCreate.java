package exam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Command;

public class ExamCommandCreate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//파라미터
		ExamDTO dto = new ExamDTO();
		dto.setExamName(request.getParameter("Tname"));
		String origanQC = request.getParameter("Qcnt");
		int QC = Integer.parseInt(origanQC);
		dto.setQuestCount(QC);
		String OriginET = request.getParameter("Ttime");
		int ET = Integer.parseInt(OriginET);
		dto.setExamTime(ET);
		dto.setExamType(request.getParameter("subject"));
		dto.setExamDesc(request.getParameter("desc"));
		dto.setQuestGroup(request.getParameter("Ttype"));
		
		
		//등록처리
		ExamDAO dao = new ExamDAO();
		dao.insert(dto);
		
		
		//목록으로 포워드
		return "list.jsp";
	}

}
