package xyz.itwill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/admin_member")
	public String AdminMember() {
		return "admin/member/admin_member_list";
	}
	
	
	
	
	@RequestMapping("/admin_faq")
	public String AdminFaq() {
		return "admin/faq/admin_faq_list";
	}
	
	@RequestMapping("/admin_faq_write")
	public String AdminFaqWrite() {
		return "admin/faq/admin_faq_write";
	}
	
	@RequestMapping("/admin_faq_detail")
	public String AdminFaqDetail() {
		return "admin/faq/admin_faq_detail";
	}
	
	@RequestMapping("/admin_qna")
	public String AdminQna() {
		return "admin/qna/admin_qna_list";
	}
	
	@RequestMapping("/admin_qna_answer")
	public String AdminQnaAnswer() {
		return "admin/qna/admin_qna_answer";
	}
}
