package co.yedam.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.app.common.Command;

public class Fileupload implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String uploadPath = request.getSession() //session기본객체
				.getServletContext() // application기본객체 // 리퀘스트세션을 통해서 내장객체의 어플리케이션인 서블렛컨텍스트의 컨텍스트를 구함
				.getRealPath("/images"); // images는 url폴더의 실제경로를 구해옴 
		// D:\dev\apache-tomcat-8.5.47\wtpwebapps\model\images
		
		
		// out.print(uploadPath);

		try {
			MultipartRequest multi = new MultipartRequest( 
					// MultipartRequest 인스턴스 생성(cos.jar의 라이브러리)
					request, 
					uploadPath, // 파일을 저장할 디렉토리 지정
					10 * 1024 * 1024, // 첨부파일 최대 용량 설정(bite) / 10KB / 용량 초과 시 예외 발생
					"utf-8", // 인코딩 방식 지정
					new DefaultFileRenamePolicy() 
					// 중복 파일 처리(동일한 파일명이 업로드되면 뒤에 숫자 등을 붙여 중복 회피)
			);
			
			//uploadform.jsp파일참고
			String desc = multi.getParameter("desc"); // form의 name="desc"인 값을 구함

			/* form의 <input type="file"> name값을 모를 경우 name을 구할때 사용
			Enumeration files=multi.getFileNames(); // form의 type="file" name을 구함
			String file1 =(String)files.nextElement(); // 첫번째 type="file"의 name 저장
			String file2 =(String)files.nextElement(); // 두번째 type="file"의 name 저장
			*/

			String fileName1 = multi.getFilesystemName("uploadfile"); // form의 name="uploadfile"인 값을 구함
			// name=file1의 업로드된 시스템 파일명을 구함(중복된 파일이 있으면, 중복 처리 후 파일 이름)
			String orgfileName1 = multi.getOriginalFileName("uploadfile"); 
			// name=file1의 업로드된 원본파일 이름을 구함(중복 처리 전 이름)

			
			// 응답 화면에 출력
			response.getWriter().append("desc:" + desc + "<br>");
			response.getWriter().append("fileName1:" + fileName1 + "<br>");
			response.getWriter().append("orgfileName1:" + orgfileName1 + "<br>");
			response.getWriter().append("uploadPath:" + uploadPath + "<br>");
			
			
			
			
			//DAO insert
			
			
			
		} catch (Exception e) {
			e.getStackTrace();
		} // 업로드 종료
		
		
		return null;
	}

}
