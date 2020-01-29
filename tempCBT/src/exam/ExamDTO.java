package exam;

public class ExamDTO {
	private int examNo;
	private String examName;
	private int questCount;
	private int examTime;
	private String questGroup;
	private String examDesc;
	private String examType;
	
	public int getExamNo() {
		return examNo;
	}
	public void setExamNo(int examNo) {
		this.examNo = examNo;
	}
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}
	public int getQuestCount() {
		return questCount;
	}
	public void setQuestCount(int questCount) {
		this.questCount = questCount;
	}
	public int getExamTime() {
		return examTime;
	}
	public void setExamTime(int examTime) {
		this.examTime = examTime;
	}
	public String getQuestGroup() {
		return questGroup;
	}
	public void setQuestGroup(String questGroup) {
		this.questGroup = questGroup;
	}
	public String getExamDesc() {
		return examDesc;
	}
	public void setExamDesc(String examDesc) {
		this.examDesc = examDesc;
	}
	public String getExamType() {
		return examType;
	}
	public void setExamType(String examType) {
		this.examType = examType;
	}
	
	@Override
	public String toString() {
		return "ExamDTO [examNo=" + examNo + ", examName=" + examName + ", questCount=" + questCount + ", examTime="
				+ examTime + ", questGroup=" + questGroup + ", examDesc=" + examDesc + ", examType=" + examType + "]";
	}
	
	
}
