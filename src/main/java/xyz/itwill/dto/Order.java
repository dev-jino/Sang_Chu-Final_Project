package xyz.itwill.dto;

/*
 이름          널?       유형           
----------- -------- ------------ 
IDX         NOT NULL NUMBER       
MEMBER_ID            VARCHAR2(50) 
PRODUCT_IDX          NUMBER       
DATE                 DATE  
STATUS               NUMBER
 */
public class Order {
	private int idx;
	private String memberId;
	private int productIdx;
	private String date;
	private int status;
	
	public Order() {
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

	public int getProductIdx() {
		return productIdx;
	}

	public void setProductIdx(int productIdx) {
		this.productIdx = productIdx;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
