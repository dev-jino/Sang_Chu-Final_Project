package xyz.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.itwill.dto.Member;
import xyz.itwill.exception.UserinfoNotFoundException;
import xyz.itwill.service.MemberService;
import xyz.itwill.service.ProductService;


//로그인 사용자만 사용할 수 있도록 인터셉터 사용해야함
@Controller
public class MypageController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private MemberService memberSerivce;

	@RequestMapping(value = "/mypage_list", method = RequestMethod.GET)
	public String sellProductList(@RequestParam(defaultValue = "1") int status, Model model, HttpSession session) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("status", status);
		map.put("memberId", loginMember.getId());
		model.addAttribute("productStatusList", productService.getStatusProductList(map));
		model.addAttribute("status", status);
		
		return "mypage/mypage_list";
	}
	
	
	@RequestMapping("/mypage_exchange")
	public String mypageExchange() {
		return "mypage/mypage_exchange";
	}
	
	@RequestMapping("/mypage_info_update")
	public String mypageInfoUpdate(Model model,HttpSession session) {
		model.addAttribute("member", session.getAttribute("loginMember"));
		
		return "mypage/mypage_info_update";
	}
	
	
	
	@RequestMapping("/mypage_pay_password")
	public String mypagePayPassword(HttpSession session, Model model) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		model.addAttribute("id",loginMember.getId());
		return "mypage/mypage_pay_password";
	}
	
	@RequestMapping(value = "/mypage_pay_password", method = RequestMethod.POST)
	public String mypagePayPassword(@ModelAttribute Member member) {
		memberSerivce.modifyPayPw(member);
		return "redirect:/mypage_pay_password";
	}
	
	
	@RequestMapping("/mypage_pay")
	public String mypagePay(Model model, HttpSession session) throws UserinfoNotFoundException {
		model.addAttribute("member", session.getAttribute("loginMember"));
		return "mypage/mypage_pay";
	}
	
	@RequestMapping("/mypage_qna")
	public String mypageQna() {
		return "mypage/mypage_qna";
	}
	
	
	@RequestMapping("/pay_detail")
	public String payDetail() {
		return "mypage/pay_detail";
	}
	
	@RequestMapping("/delete_member")
	public String deleteMember(HttpSession session) throws UserinfoNotFoundException {
		Member loginMember = (Member)session.getAttribute("loginMember");
		memberSerivce.removeMember(loginMember.getId());
		return "mypage/delete_member";
	}
	
}
