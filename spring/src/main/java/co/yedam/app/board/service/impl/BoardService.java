package co.yedam.app.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.yedam.app.board.BoardDTO;
import co.yedam.app.common.LogAdvice;

@Service
public class BoardService {
	@Autowired BoardDAO dao;
	LogAdvice log = new LogAdvice();
	//목록조회
	public List<BoardDTO> selectList(){
		//권한체크
		
		//트랜잭션처리
		
		//로그기록
		//log.logPrinting();
		
		return dao.selectList();
		
	}
	//등록
	public int insert(BoardDTO dto) {
		//로그기록
		//log.logPrinting();
		
		return dao.insert(dto);
	}
}
