package com.dbal.app.board;

public class Board {
	private String seq;
	private String title;
	private String wid;
	private String wdate;
	private String contents;

	public String getSeq() {
		return seq;
	}

	public String getTitle() {
		return title;
	}

	public String getWid() {
		return wid;
	}

	public String getWdate() {
		return wdate;
	}

	public String getContents() {
		return contents;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setWid(String wid) {
		this.wid = wid;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	@Override
	public String toString() {
		return "Board [seq=" + seq + ", title=" + title + ", wid=" + wid + ", wdate=" + wdate + ", contents=" + contents
				+ "]";
	}

}
