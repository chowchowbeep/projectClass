package co.yedam.app.board;

import java.sql.Date;

public class BoardDTO {
	private int no;
	private String poster;
	private String subject ;
	private String contents; 
	private Date lastpost; 
	private int views;
	
	public int getNo() {
		return no;
	}
	public String getPoster() {
		return poster;
	}
	public String getSubject() {
		return subject;
	}
	public String getContents() {
		return contents;
	}
	public Date getLastpost() {
		return lastpost;
	}
	public int getViews() {
		return views;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public void setLastpost(Date lastpost) {
		this.lastpost = lastpost;
	}
	public void setViews(int views) {
		this.views = views;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [no=" + no + ", poster=" + poster + ", subject=" + subject + ", contents=" + contents
				+ ", lastpost=" + lastpost + ", views=" + views + "]";
	}
	
}
