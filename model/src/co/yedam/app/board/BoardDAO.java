package co.yedam.app.board;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO extends DAO { // DAO상속받음
	
	//추가
	public int insert(BoardDTO dto) {
		int r = 0;
		try {
			String sql = "insert into board"
					+ " (no, poster, subject, contents, lastpost, views)"
					+ " values ((select max(no)+1 from board), ?,?,?, sysdate, 1)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPoster());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getContents());
			r = pstmt.executeUpdate();	
					
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return r;
	}
	
	
	//수정
	public int update(BoardDTO dto) {
		int r = 0;
		try {
			String sql = "update board set subject=?, contents=?"
					+ " where no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSubject());
			pstmt.setString(2, dto.getContents());
			pstmt.setInt(3, dto.getNo());
			r = pstmt.executeUpdate();	
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return r;
	}
	
	
	//삭제
	public int delete(BoardDTO dto) {
		int r = 0;
		try {
			String sql = "delete from board where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getNo());
			r = pstmt.executeUpdate();	
					
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return r;
	}
	
	
	
	//단건조회
	public BoardDTO selectOne(int no) {
		BoardDTO dto = new BoardDTO();
		try {
			String sql = "select * from board where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) { //단건 조회기 때문에 if로
				dto.setNo(rs.getInt("no"));
				dto.setPoster(rs.getString("poster"));
				dto.setSubject(rs.getString("subject"));
				dto.setContents(rs.getString("contents"));
				dto.setLastpost(rs.getDate("lastpost"));
				dto.setViews(rs.getInt("views"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return dto;
	}
	
	
	//목록조회
	public List<BoardDTO> selectList(){
		List<BoardDTO> list = new ArrayList<BoardDTO>();

		
		// 1.DB연결
		try {
		// 2.쿼리실행
			String sql = "select * from board order by no desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			
		// 3.결과저장
			while(rs.next()) {
				BoardDTO dto = new BoardDTO(); //여러건 생성하여 리스트에 담기 때문에 매번 dto선언
				dto.setNo(rs.getInt("no"));
				dto.setPoster(rs.getString("poster"));
				dto.setSubject(rs.getString("subject"));
				dto.setContents(rs.getString("contents"));
				dto.setLastpost(rs.getDate("lastpost"));
				dto.setViews(rs.getInt("views"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 4.연결해제
			close();
		}		
		return list;
	}
 	
	
}
