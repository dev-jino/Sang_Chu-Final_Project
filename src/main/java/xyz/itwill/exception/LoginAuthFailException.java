package xyz.itwill.exception;

//로그인 인증 실패를 위해 작성된 예외클래스
public class LoginAuthFailException extends Exception {
	private static final long serialVersionUID = 1L;

	private String id;
	
	public LoginAuthFailException() {
		// TODO Auto-generated constructor stub
	}

	public LoginAuthFailException(String message, String id) {
		super(message);
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
