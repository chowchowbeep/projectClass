package co.yedam.app.board.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import co.yedam.app.board.BoardDTO;
import co.yedam.app.board.service.impl.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;

	// 목록조회
	@RequestMapping("/boardList")
	public String boardList(HttpServletRequest request, BoardDTO dto) {

		// DAO 목록 조회
		List<BoardDTO> list = boardService.selectList(dto);
		// request 속성 추가
		request.setAttribute("list", list);

		// BoardDTO는 담지 않아도 리퀘스트객체에 실려감

		// 뷰페이지 포워드
		return "board/boardList";
	}

	// 게시글등록
	@RequestMapping("/boardInsert")
	public String boardInsert(BoardDTO dto, MultipartFile attachfile) throws IllegalStateException, IOException {
		// 여러개의 파일이 전송되는 경우 배열로 받아서 for문으로 처리가능
		// 첨부파일 업로드 처리
		String fileName = null;
		if (attachfile != null && !attachfile.isEmpty() && attachfile.getSize() > 0) {
			fileName = attachfile.getOriginalFilename();

			// 첨부파일명 VO에 지정
			dto.setUploadfilename(fileName); // filename-string을 dto에 저장
			dto.setUploadfile(attachfile.getBytes()); // file-blob 바이트 배열을 dto에 저장 /원래파일을 이동??

			attachfile.transferTo(new File("d:/upload/" + fileName)); // 임시폴더에 저장한 파일 자동으로 업로드

		}
		boardService.insert(dto); // dto를 insert
		return "redirect:boardList";
	}

	// 등록폼
	@RequestMapping("/boardInsertForm")
	public String boardInsertForm() {
		return "board/boardInsertForm"; // servelt-context.xml에서 prefix, suffix가 설정되어 있으므로 경로지정과 확장자 입력 x
	}

	@RequestMapping(value = "/Filedown")
	public void cvplFileDownload(@RequestParam Map<String, Object> commandMap, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String atchFileId = (String) commandMap.get("atchFileId");
		File uFile = new File("d:/upload/", atchFileId);
		long fSize = uFile.length();
		if (fSize > 0) {
			String mimetype = "application/x-msdownload";
			response.setHeader("Content-Disposition",
					"attachment; filename=\"" + URLEncoder.encode(atchFileId, "utf-8") + "\""); // 가져온 파일을 utf-8로 인코딩
			// setDisposition(atchFileId, request, response);
			BufferedInputStream in = null;
			BufferedOutputStream out = null;
			try {
				in = new BufferedInputStream(new FileInputStream(uFile));
				out = new BufferedOutputStream(response.getOutputStream());
				FileCopyUtils.copy(in, out); // input스트림과 output스트림을 다운로드
				out.flush();
			} catch (IOException ex) {
			} finally {
				in.close();
				response.getOutputStream().flush();
				response.getOutputStream().close();
			}
		} else {
			response.setContentType("application/x-msdownload");
			PrintWriter printwriter = response.getWriter();
			printwriter.println("<html>");
			printwriter.println("<h2>Could not get file name:<br>" + atchFileId + "</h2>");
			printwriter.println("<center><h3><a href='javascript: history.go(-1)'>Back</a></h3></center>");
			printwriter.println("&copy; webAccess");
			printwriter.println("</html>");
			printwriter.flush();
			printwriter.close();
		}
	}

	@RequestMapping(value = "/getByteImage.do")
	public void getByteImage(int no, HttpServletResponse response) throws SerialException, Exception {
		BoardDTO dto = boardService.boardOne(no);
		SerialBlob blob = new SerialBlob(dto.getUploadfile());
		ServletOutputStream outputStream = response.getOutputStream();
		IOUtils.copy(blob.getBinaryStream(), outputStream);//blob받아서 ouput으로 re
		outputStream.flush();
		outputStream.close();
	}

}
