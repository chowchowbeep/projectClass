package co.yedam.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.yedam.app.board.BoardDTO;
import co.yedam.app.service.impl.BoardDAO;

@Service
public class BoardService {
	@Autowired BoardDAO dao;
	//목록조회
	public List<BoardDTO> selectList(){
		//권한체크
		//트랜잭션처리
		//로그기록
		return dao.selectList();
		
	}
	//등록
	public int insert(BoardDTO dto) {
		return dao.insert(dto);
	}
}
