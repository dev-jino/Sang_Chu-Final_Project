package xyz.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import xyz.itwill.dto.Member;
import xyz.itwill.exception.LoginAuthFailException;
import xyz.itwill.exception.UserinfoExistsException;
import xyz.itwill.exception.UserinfoNotFoundException;
import xyz.itwill.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberSerivce;
	
	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Login() {
		return "member/login";
	}
	
	//로그인 인증처리
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String Login(@ModelAttribute Member member, HttpSession session) throws LoginAuthFailException, UserinfoNotFoundException {
		memberSerivce.loginAuth(member);
		session.setAttribute("loginMember", memberSerivce.getMember(member.getId()));
		return "redirect:/";
	}
	
	//로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/member/login";
	}
	
	
	//회원가입
	@RequestMapping(value = "/join", method =  RequestMethod.GET) 
		public String join() {
			return "member/join";
		}
	
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(@ModelAttribute Member member) throws UserinfoExistsException {
		
		memberSerivce.addMember(member);
		return "redirect:/login";
	}
	
	
	//아이디찾기
	@RequestMapping("/find_id")
	public String findId() {
		return "member/find_id";
	}
	
	//비밀번호 찾기
	@RequestMapping("/find_password")
	public String findPasswd() {
		return "member/find_passwd";
	}
	
	//예외처리 어노테이션
	@ExceptionHandler(value = UserinfoExistsException.class)
	public String exceptionHandler(UserinfoExistsException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("member", exception.getMember());
		return "member/login";
	}
	
	@ExceptionHandler(value = LoginAuthFailException.class)
	public String excptionHandler(LoginAuthFailException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("id", exception.getId());
		return "member/login";
	}

}
