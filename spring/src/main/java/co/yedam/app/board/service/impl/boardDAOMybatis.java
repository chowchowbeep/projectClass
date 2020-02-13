package co.yedam.app.board.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.app.board.BoardDTO;

@Repository
public class boardDAOMybatis {
	@Autowired
	private SqlSession session;
	
	public int boardCount(BoardDTO dto) {
		return session.selectOne("BoardDAO.boardCount",dto);
	}
	
	public List<BoardDTO>boardList(BoardDTO dto){//BoardMapper의 id와 메소드명은 되도록이면 동일하게
		System.out.println("BoradDAOMybatis boardList(dto) ");
		return session.selectList("BoardDAO.boardList",dto);
		//BoardMapper.xml 참고_ 메소드명("mapper의 namespace.요소의 id",파라미터)
		// mapper의 namespace가 같으면 다른 매퍼 파일에서 id값이 중복된 것이 있어도 무관함.
		//namespace 와 id가 결합되어 사용되기 때문에.
	}
	
	public int insert(BoardDTO dto) {
		System.out.println("BoradDAOMybatis insertBoard() ");
		return session.insert("BoardDAO.insertBoard",dto);
	}
}
