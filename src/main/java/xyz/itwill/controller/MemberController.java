package xyz.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import xyz.itwill.dto.Member;
import xyz.itwill.service.MemberSerivce;

@Controller
public class MemberController {
	@Autowired
	private MemberSerivce memberSerivce;
	
	@RequestMapping("/login")
	public String Login() {
		return "member/login";
	}
	
	@RequestMapping(value = "/join", method =  RequestMethod.GET) 
		public String join() throws Exception {
			return "member/join";
		}
	
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String Join(@ModelAttribute Member member) {
		memberSerivce.addMember(member);
		return "member/login";
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
