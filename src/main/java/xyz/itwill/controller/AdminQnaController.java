package xyz.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.itwill.dto.Qna;
import xyz.itwill.service.QnaService;
import xyz.itwill.util.Pager;

@Controller
public class AdminQnaController {

	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("/admin_qna")
	public String AdminQna(@RequestParam(defaultValue="1") int pageNum,Model model) {
		int totalBoard =qnaService.getQnaCount();
		int pageSize = 5;
		int blockSize = 5;
		Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
		Map<String, Object> pagerMap = new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		model.addAttribute("qnaList", qnaService.getQnaList(pagerMap));
		model.addAttribute("pager", pager);
		
		
		
		return "admin/qna/admin_qna_list";
	
	
	
	}
	
	@RequestMapping(value ="/admin_qna_answer",method = RequestMethod.GET)
	public String AdminQnaAnswer(@RequestParam int idx,Model model) {
		model.addAttribute("idx",idx);
		
		return "admin/qna/admin_qna_answer";
		
	}
	@RequestMapping(value ="/admin_qna_add", method = RequestMethod.POST)
	public String AdminQnaAdd(@ModelAttribute Qna qna) {
		qnaService.modifyAdminQnaAnswer(qna);
		
		
		
		return "redirect:/admin_qna";
		
	}
	@RequestMapping(value ="/admin_qna_detail",method = RequestMethod.GET)
	public String AdminQnaDetail(@RequestParam int idx,Model model) {
		
		model.addAttribute("qa",qnaService.getQna(idx));
		
		return "admin/qna/admin_qna_detail";
		
	}
	
	
	@RequestMapping(value ="/admin_qna_comment_delete",method = RequestMethod.GET)
	public String AdminQnaCommentDelete(@RequestParam int idx) {
		
		qnaService.removeAdminQnaComment(idx);
		
		return "redirect:/admin_qna_detail?idx="+idx;
	}

	@RequestMapping(value ="/admin_qna_modify",method = RequestMethod.GET)
	public String AdminQnaModify(@RequestParam int idx,Model model) {
		
		model.addAttribute("commentList",qnaService.getQna(idx));
		return "admin/qna/admin_qna_modify";
	}
	
	
	
	

	
}
