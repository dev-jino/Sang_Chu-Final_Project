package xyz.itwill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	@RequestMapping("/mypage_list")
	public String MypageMain() {
		return "mypage/mypage_list";
	}
	
	@RequestMapping("/mypage_exchange")
	public String MypageExchange() {
		return "mypage/mypage_exchange";
	}
	
	@RequestMapping("/mypage_info_update")
	public String MypageInfoUpdate() {
		return "mypage/mypage_info_update";
	}
	
	
	@RequestMapping("/mypage_pay_password")
	public String MypagePayPassword() {
		return "mypage/mypage_pay_password";
	}
	
	@RequestMapping("/mypage_pay")
	public String MypagePay() {
		return "mypage/mypage_pay";
	}
	
	@RequestMapping("/mypage_qna")
	public String MypageQna() {
		return "mypage/mypage_qna";
	}
	
	
	@RequestMapping("/pay_detail")
	public String PayDetail() {
		return "mypage/pay_detail";
	}
	
	@RequestMapping("/delete_member")
	public String DeleteMember() {
		return "mypage/delete_member";
	}
	
}
