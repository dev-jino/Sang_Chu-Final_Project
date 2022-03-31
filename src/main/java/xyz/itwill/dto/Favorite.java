package xyz.itwill.dto;

/*
이름          널?       유형           
----------- -------- ------------ 
FIDX         NOT NULL NUMBER       
PRODUCT_IDX          NUMBER       
MEMBER_ID            VARCHAR2(50) 
 */
public class Favorite {
	private int fidx;
	private int productIdx;
	private String memberId;
	
	
	public Favorite() {
		// TODO Auto-generated constructor stub
	}


	public int getFidx() {
		return fidx;
	}


	public void setFidx(int fidx) {
		this.fidx = fidx;
	}


	public int getProductIdx() {
		return productIdx;
	}


	public void setProductIdx(int productIdx) {
		this.productIdx = productIdx;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	
}
