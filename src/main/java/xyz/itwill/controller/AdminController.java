package xyz.itwill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/admin_qna")
	public String AdminQna() {
		return "admin/qna/admin_qna_list";
	}
	
	@RequestMapping("/admin_qna_answer")
	public String AdminQnaAnswer() {
		return "admin/qna/admin_qna_answer";
	}
}
