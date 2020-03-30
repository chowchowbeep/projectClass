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
		if(dto.getPage() == 0 ) {
			dto.setPage(1);
		}
		// 페이징 처리
		int p = dto.getPage();//p=내가 클릭한 페이지
		int pageunit = 3;//한 페이지에 표시하고 싶은 컨텐츠 갯수
		int start = (p - 1) * pageunit + 1;
		int end = start + pageunit - 1;
		dto.setStart(start);
		dto.setEnd(end);
		
		//전체 페이지수
		int totalRecord = dao.boardCount(dto);
		int lastPage = totalRecord / pageunit
						+ ((totalRecord % pageunit > 0) ? 1:0); 
		dto.setLastPage(lastPage);
		
		
		
		return dao.boardList(dto);

	}

	// 등록
	public int insert(BoardDTO dto) {
		// 로그기록
		// log.logPrinting();
		
		
		//트랜잭션처리 실습.//BoardMapper.xml에서 no를 직접입력하게 하여 무결성제약조건 위반하게 만든 뒤.
	
		//dao.insert(dto); //인서트 후 자동 커밋
		int r = dao.insert(dto);//error발생 => 롤백되어야 함. 
		
		//transaction-context.xml에서 transationAOP설정이후에는 둘다 롤백 되어야 함
		//->autocommit false
		
		return r; 
	}
	
	
	public BoardDTO boardOne(int no) {
		BoardDTO dto = dao.boardOne(no);
		return dto;
	}
	
	
}
