package xyz.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.itwill.service.ProductService;

@Controller
public class MypageController {
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping("/mypage_list")
	public String MypageMain() {
		return "mypage/mypage_list";
	}
	
	@RequestMapping(value = "/mypage_list", method = RequestMethod.GET)
//	public String sellProductList(@RequestParam int status, Model model) {
	public String sellProductList(Model model) {
		model.addAttribute("productList", productService.getProductList());
//		model.addAttribute("productStatusList", productService.getStatusProductList(status));
		
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
