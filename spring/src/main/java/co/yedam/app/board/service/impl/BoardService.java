package co.yedam.app.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.yedam.app.board.BoardDTO;
import co.yedam.app.common.LogAdvice;

@Service
public class BoardService {
	@Autowired
	boardDAOMybatis dao;
	LogAdvice log = new LogAdvice();

	// 목록조회
	public List<BoardDTO> selectList(BoardDTO dto) {
		// 권한체크

		// 트랜잭션처리

		// 로그기록
		// log.logPrinting();

		// 페이징 처리
		int p = dto.getPage();
		int pageunit = 3;
		int start = (p - 1) * pageunit + 1;
		int end = start + pageunit - 1;
		dto.setStart(start);
		dto.setEnd(end);
		return dao.boardList(dto);

	}

	// 등록
	public int insert(BoardDTO dto) {
		// 로그기록
		// log.logPrinting();

		return dao.insert(dto);
	}
}
