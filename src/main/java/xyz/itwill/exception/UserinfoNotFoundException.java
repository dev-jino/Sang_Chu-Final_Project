package xyz.itwill.exception;

//회원정보의 변경,삭제,검색시 아이디의 회원정보가 없는 경우를 위해 작성된 예외클래스
public class UserinfoNotFoundException extends Exception {
	private static final long serialVersionUID = 1L;
	private String id;
	public UserinfoNotFoundException() {
		// TODO Auto-generated constructor stub
	}
	
	public UserinfoNotFoundException(String message) {
		super(message);	
		
	}
	
	public UserinfoNotFoundException(String message,String id) {
		
		super(message);
		this.id=id;
		
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
