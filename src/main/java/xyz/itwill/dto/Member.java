package xyz.itwill.dto;
/*
이름       널?       유형            
-------- -------- ------------- 
ID       NOT NULL VARCHAR2(50)  
NAME              VARCHAR2(70)  
NICNAME           VARCHAR2(70)  
PASSWORD          VARCHAR2(200) 
PHONE             VARCHAR2(20)  
ACCOUNT           VARCHAR2(20)  
PAY_PW            VARCHAR2(200) 
COIN              NUMBER        
STATUS            NUMBER    
*/

public class Member {
	private String id;
	private String name;
	private String nicname;
	private String password;
	private String phone;
	private String account;
	private String pay_pw;
	private int coin;
	private int status;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNicname() {
		return nicname;
	}

	public void setNicname(String nicname) {
		this.nicname = nicname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPay_pw() {
		return pay_pw;
	}

	public void setPay_pw(String pay_pw) {
		this.pay_pw = pay_pw;
	}

	public int getCoin() {
		return coin;
	}

	public void setCoin(int coin) {
		this.coin = coin;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	

}