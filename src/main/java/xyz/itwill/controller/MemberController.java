package xyz.itwill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@RequestMapping("/login")
	public String Login() {
		return "member/login";
	}
	
	@RequestMapping("/join")
	public String Join() {
		return "member/join";
	}
	
	@RequestMapping("/find_id")
	public String FindId() {
		return "member/find_id";
	}
	
	@RequestMapping("/find_password")
	public String FindPasswd() {
		return "member/find_passwd";
	}
}
