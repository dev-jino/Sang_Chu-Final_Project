package xyz.itwill.dto;

/*
이름          널?       유형             
----------- -------- -------------- 
IDX         NOT NULL NUMBER         
MEMBER_ID            VARCHAR2(50)   
PRODUCT_IDX          NUMBER         
CONTENT              VARCHAR2(4000) 
REG_DATE             DATE           
REF_GROUP            NUMBER         
REF_STEP             NUMBER         
REF_LEVEL            NUMBER
STATUS               NUMBER
*/

public class Comment {
	private int comIdx;
	private String memberId;
	private int productIdx;
	private String content;
	private String regDate;
	private int refGroup;
	private int refStep;
	private int refLevel;
	private int status;
	
	public Comment() {
		// TODO Auto-generated constructor stub
	}

	public int getComIdx() {
		return comIdx;
	}

	public void setComIdx(int comIdx) {
		this.comIdx = comIdx;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getProductIdx() {
		return productIdx;
	}

	public void setProductIdx(int productIdx) {
		this.productIdx = productIdx;
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

	public int getRefGroup() {
		return refGroup;
	}

	public void setRefGroup(int refGroup) {
		this.refGroup = refGroup;
	}

	public int getRefStep() {
		return refStep;
	}

	public void setRefStep(int refStep) {
		this.refStep = refStep;
	}

	public int getRefLevel() {
		return refLevel;
	}

	public void setRefLevel(int refLevel) {
		this.refLevel = refLevel;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
}
