package xyz.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.itwill.dto.Member;
import xyz.itwill.service.MemberService;
import xyz.itwill.service.ProductService;

@Controller
public class MypageController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private MemberService memberSerivce;
	
	//GET방식이나 POST방식에 상관없이 mypage_list를 요청하면 실행되는 메소드
//	@RequestMapping("/mypage_list")
//	public String mypageList() {
//		return "mypage/mypage_list";
//	}
	
	@RequestMapping(value = "/mypage_list", method = RequestMethod.GET)
	public String sellProductList(@RequestParam(defaultValue = "1") int status, Model model) {
//	public String mypageList(Model model) {
//		model.addAttribute("productList", productService.getProductList());
		model.addAttribute("productStatusList", productService.getStatusProductList(status));
		
		return "mypage/mypage_list";
	}
	
	
	@RequestMapping("/mypage_exchange")
	public String mypageExchange() {
		return "mypage/mypage_exchange";
	}
	
	@RequestMapping("/mypage_info_update")
	public String mypageInfoUpdate() {
		return "mypage/mypage_info_update";
	}
	
	
	
//	@RequestMapping(value = "/mypage_pay_password", method = RequestMethod.GET)
	@RequestMapping("/mypage_pay_password")
//	public String mypagePayPassword(@RequestParam String id, Model model) {
	public String mypagePayPassword() {
//		model.addAttribute("id", memberSerivce.getMember(id));
		return "mypage/mypage_pay_password";
	}
	
	@RequestMapping(value = "/mypage_pay_password", method = RequestMethod.POST)
	public String mypagePayPassword(@ModelAttribute Member member, HttpSession session) {
		memberSerivce.modifyPayPw(member);
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		return "redirect:/mypage_pay_password";
	}
	
	
	
	@RequestMapping("/mypage_pay")
	public String mypagePay(@RequestParam String id,Model model) {
		model.addAttribute("member", memberSerivce.getMember(id));
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
	public String deleteMember() {
		return "mypage/delete_member";
	}
	
}
