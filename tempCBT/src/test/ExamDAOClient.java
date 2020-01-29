package test;

import exam.ExamDAO;
import exam.ExamDTO;

public class ExamDAOClient {
	public static void main(String[] args) {
		ExamDAO dao = new ExamDAO();
		ExamDTO dto = new ExamDTO();
		dto.setExamDesc("으아 시험");
		dao.insert(dto);
	}
}
