package common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exam.ExamDAO;
import exam.ExamDTO;

public interface Command {
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException,IOException;
	
}
