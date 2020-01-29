package quest;

import java.util.ArrayList;
import java.util.List;

import common.DAO;

public class QuestDAO extends DAO {
	
	// 추가
	public int insert(QuestDTO dto) {
		int r = 0;
		try {
			String sql = "insert into quest "
					+ " (QUEST_NO, QUEST_CONTENT, QUEST_TYPE,"  
					+ " ANSWER1, ANSWER2, ANSWER3, ANSWER4,"  
					+ " RIGHT_ANSWER, EXPLAIN) values" 
					+ " ((select nvl(max(QUEST_NO)+1,0) from quest),?,? "
					+ " ?, ?, ?, ?," 
					+ " ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getQuestNo());
			pstmt.setString(2, dto.getQuestContent());
			pstmt.setString(3, dto.getQuestType());
			pstmt.setString(4, dto.getAnswer1());
			pstmt.setString(5, dto.getAnswer2());
			pstmt.setString(6, dto.getAnswer3());
			pstmt.setString(7, dto.getAnswer4());
			pstmt.setString(8, dto.getRightAnswer());
			pstmt.setString(9, dto.getExplain());
			r = pstmt.executeUpdate(sql);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}

	
	// 수정
	public int update(QuestDTO dto) {
		int r = 0;
		try {
			String sql = "update quest set QUEST_CONTENT=?, QUEST_TYPE=?," + 
					" ANSWER1=?, ANSWER2=?, ANSWER3=?, ANSWER4=?," + 
					" RIGHT_ANSWER=?, EXPLAIN=?" + 
					" where QUEST_NO=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getQuestContent());
			pstmt.setString(2, dto.getQuestType());
			pstmt.setString(3, dto.getAnswer1());
			pstmt.setString(4, dto.getAnswer2());
			pstmt.setString(5, dto.getAnswer3());
			pstmt.setString(6, dto.getAnswer4());
			pstmt.setString(7, dto.getRightAnswer());
			pstmt.setString(8, dto.getExplain());
			pstmt.setInt(9, dto.getQuestNo());
			r = pstmt.executeUpdate(sql);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}
	
	// 삭제
	public int delete(int no) {
		int r = 0;
		try {
			String sql = "delete from quest where QUEST_NO=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			r = pstmt.executeUpdate(sql);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}
	
	// 단건조회
	public QuestDTO selectOne(int no) {
		QuestDTO dto = new QuestDTO();
		try {
			String sql = "select * from quest where QUEST_NO=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setQuestNo(rs.getInt("QUEST_NO"));
				dto.setQuestContent(rs.getString("QUEST_CONTENT"));
				dto.setQuestType(rs.getString("QUEST_TYPE"));
				dto.setAnswer1(rs.getString("ANSWER1"));
				dto.setAnswer2(rs.getString("ANSWER2"));
				dto.setAnswer3(rs.getString("ANSWER3"));
				dto.setAnswer4(rs.getString("ANSWER4"));
				dto.setRightAnswer(rs.getString("RIGHT_ANSWER"));
				dto.setExplain(rs.getString("EXPLAIN"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	// 목록조회
	public List<QuestDTO> selectList() {
		List<QuestDTO> list = new ArrayList<QuestDTO>();
		try {
			String sql = "select * from QUEST";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				QuestDTO dto = new QuestDTO();
				dto.setQuestNo(rs.getInt("QUEST_NO"));
				dto.setQuestContent(rs.getString("QUEST_CONTENT"));
				dto.setQuestType(rs.getString("QUEST_TYPE"));
				dto.setAnswer1(rs.getString("ANSWER1"));
				dto.setAnswer2(rs.getString("ANSWER2"));
				dto.setAnswer3(rs.getString("ANSWER3"));
				dto.setAnswer4(rs.getString("ANSWER4"));
				dto.setRightAnswer(rs.getString("RIGHT_ANSWER"));
				dto.setExplain(rs.getString("EXPLAIN"));
				list.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
	
	
}
