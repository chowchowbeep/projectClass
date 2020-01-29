package test;

import exam.ExamDAO;
import exam.ExamDTO;

public class ExamDAOClient {
	public static void main(String[] args) {
		ExamDAO dao = new ExamDAO();
		ExamDTO dto = new ExamDTO();
		dto.setExamName("freefree");
		dto.setQuestCount(10);
		dto.setExamTime(2);
		dto.setQuestGroup("002");
		dto.setExamDesc("dao test입니다");
		dto.setExamType("R");
		dao.insert(dto);
	}
}
