package xyz.itwill.dto;

/*
이름       널?       유형             
-------- -------- -------------- 
IDX      NOT NULL NUMBER         
CATEGORY          VARCHAR2(100)  
TITLE             VARCHAR2(500)  
CONTENT           VARCHAR2(4000) 
REG_DATE          DATE           
STATUS            NUMBER     
*/

public class Faq {
	private int idx;
	private String category;
	private String title;
	private String content;
	private String regDate;
	private int status;
	
	public Faq() {
		// TODO Auto-generated constructor stub
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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
}
