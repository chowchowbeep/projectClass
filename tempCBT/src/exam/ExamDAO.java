package exam;

import java.util.ArrayList;
import java.util.List;

import common.DAO;

public class ExamDAO extends DAO {
	
	//추가
	public int insert(ExamDTO dto) {
		int r = 0;
		try {
			String sql = "insert into exam " + 
					"(EXAM_NO, EXAM_NM, QUEST_COUNT, EXAM_TIME, " + 
					" QUEST_GROUP, EXAM_DESC, EXAM_TYPE)" + 
					" values " + 
					" ((select nvl(max(EXAM_NO)+1,0) from exam), ?, ?, ?, " + 
					//exam_no은 등록된 행 없으면 null때문에 오류발생. null제어 필요
					" ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getExamName());
			pstmt.setInt(2, dto.getQuestCount());
			pstmt.setInt(3, dto.getExamTime());
			pstmt.setString(4, dto.getQuestGroup());
			pstmt.setString(5, dto.getExamDesc());
			pstmt.setString(6, dto.getExamType());
			
			r = pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}
	
	
	//수정
	public int update(ExamDTO dto) {
		int r = 0;
		try {
			String sql = "update exam set EXAM_NM=?, QUEST_COUNT=?," 
					+ " EXAM_TIME=?, QUEST_GROUP=?,"
					+ " EXAM_DESC=?, EXAM_TYPE=?" 
					+ " where EXAM_NO = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getExamName());
			pstmt.setInt(2, dto.getQuestCount());
			pstmt.setInt(3, dto.getExamTime());
			pstmt.setString(4, dto.getQuestGroup());
			pstmt.setString(5, dto.getExamDesc());
			pstmt.setString(6, dto.getExamType());
			pstmt.setInt(7, dto.getExamNo());
			
			r = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}
	
	
	//삭제
	public int delete(ExamDTO dto) {
		int r = 0;
		try {
			String sql = "delete from exam"
					+ " where EXAM_NO=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getExamNo());
			r = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;
	}
	
	
	//단건조회
	public ExamDTO selectOne(int no) {
		ExamDTO dto = new ExamDTO();
		try {
			String sql = "select * from EXAM"
					+ " where EXAM_NO=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery(sql);
			
			if(rs.next()) {
				dto.setExamNo(rs.getInt("EXAM_NO"));
				dto.setExamName(rs.getString("EXAM_NM"));
				dto.setQuestCount(rs.getInt("QUEST_COUNT"));
				dto.setExamTime(rs.getInt("EXAM_TIME"));
				dto.setQuestGroup(rs.getString("QUEST_GROUP"));
				dto.setExamDesc(rs.getString("EXAM_DESC"));
				dto.setExamType(rs.getString("EXAM_TYPE"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return dto;
	}
	
	
	//목록조회
	public List<ExamDTO> selectList(){
		List<ExamDTO> list = new ArrayList<ExamDTO>();
		try {
			String sql = "select * from EXAM";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			
			while(rs.next()) {
				ExamDTO dto = new ExamDTO();
				dto.setExamNo(rs.getInt("EXAM_NO"));
				dto.setExamName(rs.getString("EXAM_NM"));
				dto.setQuestCount(rs.getInt("QUEST_COUNT"));
				dto.setExamTime(rs.getInt("EXAM_TIME"));
				dto.setQuestGroup(rs.getString("QUEST_GROUP"));
				dto.setExamDesc(rs.getString("EXAM_DESC"));
				dto.setExamType(rs.getString("EXAM_TYPE"));
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
