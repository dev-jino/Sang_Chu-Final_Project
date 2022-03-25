package xyz.itwill.dto;

/*
이름        널?       유형           
--------- -------- ------------ 
IDX       NOT NULL NUMBER       
MEMBER_ID          VARCHAR2(50) 
EX_COIN            NUMBER       
STATUS             NUMBER      
 */
public class Coin {
	private int idx;
	private String memberId;
	private int exCoin;
	private int status;
	
	public Coin() {
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

	public int getExCoin() {
		return exCoin;
	}

	public void setExCoin(int exCoin) {
		this.exCoin = exCoin;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
