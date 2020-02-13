package co.yedam.app.board;

import java.sql.Timestamp;

public class BoardDTO {
	private int no;
	private String poster;
	private String subject;
	private String contents;
	private Timestamp lastpost;
	private int views;
	private byte[] file;
	private String image;
	private int page;
	private int start;
	private int end;
	
	public int getPage() {
		return page;
	}

	public int getStart() {
		return start;
	}

	public int getEnd() {
		return end;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public BoardDTO() {
		
	}

	public BoardDTO(int no, String poster, String subject) {
		super();
		this.no = no;
		this.poster = poster;
		this.subject = subject;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Timestamp getLastpost() {
		return lastpost;
	}
	public void setLastpost(Timestamp lastpost) {
		this.lastpost = lastpost;
	}
	public int getViews() {
		return views;
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
