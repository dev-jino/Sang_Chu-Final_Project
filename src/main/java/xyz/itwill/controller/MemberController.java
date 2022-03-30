package xyz.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String join(@ModelAttribute Member member) {

		try {
			memberSerivce.addMember(member);
		} catch (UserinfoExistsException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			e.getMessage();
		}
		return "redirect:/login";
	}
	
	@RequestMapping(value = "/id_check", method = RequestMethod.GET)
	@ResponseBody
	public String idCheck(@RequestParam String id) {
		try {
			memberSerivce.getMember(id);
			return "impossible";
		} catch (UserinfoNotFoundException e) {
			return "possible";
		}
	}
	
	
	//아이디찾기
	@RequestMapping(value = "/find_id", method =  RequestMethod.GET)
	public String findId() {		
	return "member/find_id";
	}
		
	@RequestMapping(value = "/find_id", method =  RequestMethod.POST)
	public String findId(@RequestParam String name, @RequestParam String phone, Model model ) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name",name);
		map.put("phone", phone);
		model.addAttribute("member", memberSerivce.getFindId(map));
		return "member/id_ok";
	}
		
	//비밀번호 재설정
	@RequestMapping(value = "/find_password",method = RequestMethod.GET)
	public String findPassword() {
		return "member/find_passwd";
	}
	
	@RequestMapping(value = "/find_password",method = RequestMethod.POST)
	public String findPassword(@RequestParam String id, @RequestParam String name, @RequestParam String phone, @RequestParam String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("name", name);
		map.put("phone", phone);
		map.put("password",BCrypt.hashpw(password,BCrypt.gensalt()));
		memberSerivce.getFindPassword(map);
		return "redirect:/login";
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
