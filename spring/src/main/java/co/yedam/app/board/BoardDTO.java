package co.yedam.app.board;

import java.sql.Timestamp;
import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class BoardDTO {
	private int no;
	private String poster;
	private String subject;
	private String contents;
	private Timestamp lastpost;
	private int views;
	@JsonIgnore
	private byte[] file;
	@JsonIgnore
	private String uploadfilename; // 저장될 파일명
	@JsonIgnore
	private byte[] uploadfile; // 저장될 파일BLOB

//	@JsonIgnore private MultipartFile uploadfile; //업로드한 첨부파일 //리퀘스트객체에 담긴 파일을 자동으로 읽음

	// 원래는 페이지관련 DTO로 분리해야 함
	@JsonIgnore
	private int page;
	@JsonIgnore
	private int start;
	@JsonIgnore
	private int end;
	@JsonIgnore
	private int lastPage;

	public byte[] getUploadfile() {
		return uploadfile;
	}

	public void setUploadfile(byte[] uploadfile) {
		this.uploadfile = uploadfile;
	}

	/*
	 * public MultipartFile getUploadfile() { return uploadfile; }
	 * 
	 * public void setUploadfile(MultipartFile uploadfile) { this.uploadfile =
	 * uploadfile; }
	 */
	public byte[] getFile() {
		return file;
	}

	public String getUploadfilename() {
		return uploadfilename;
	}

	public void setFile(byte[] file) {
		this.file = file;
	}

	public void setUploadfilename(String uploadfilename) {
		this.uploadfilename = uploadfilename;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

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

}
