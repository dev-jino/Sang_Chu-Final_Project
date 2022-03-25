package xyz.itwill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {
	@RequestMapping("/qna")
	public String qna() {
		return "qna/qna_list";
	}
	
	@RequestMapping("/qna/write")
	public String qnaWrite() {
		return "qna/qna_write";
	}
}
