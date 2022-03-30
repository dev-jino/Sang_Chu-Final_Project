package xyz.itwill.dto;

import org.springframework.web.multipart.MultipartFile;

/*
 * 
 * 이름          널?       유형             
----------- -------- -------------- 
IDX         NOT NULL NUMBER         
MEMBER_ID            VARCHAR2(50)   
CATEGORY1            VARCHAR2(100)  
CATEGORY2            VARCHAR2(100)  
TITLE                VARCHAR2(500)  
CONTENT              VARCHAR2(4000) 
REG_DATE             DATE           
STATUS               NUMBER         
QNA_COMMENT          VARCHAR2(500)  
*/
public class Qna {
	private int idx;
	private String memberId;
	private String title;
	private String content;
	private String regDate;
	private int status;
	private String orImg;
	private String upImg;
	private String commentTitle;
	private String commentContent;
	
	
	private MultipartFile file;
	
	public Qna() {
		// TODO Auto-generated constructor stub
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getOrImg() {
		return orImg;
	}

	public void setOrImg(String orImg) {
		this.orImg = orImg;
	}

	public String getUpImg() {
		return upImg;
	}

	public void setUpImg(String upImg) {
		this.upImg = upImg;
	}

	public String getCommentTitle() {
		return commentTitle;
	}

	public void setCommentTitle(String commentTitle) {
		this.commentTitle = commentTitle;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	
	
}
