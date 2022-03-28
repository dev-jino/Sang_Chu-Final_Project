package xyz.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.itwill.dto.Faq;
import xyz.itwill.service.FaqService;
import xyz.itwill.util.Pager;

@Controller
public class AdminFaqController {
	@Autowired
	private FaqService faqService;
	
	@RequestMapping("/admin_faq")
	public String adminFaq(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		int totalBoard = faqService.getFaqCount();
		int pageSize = 5;
		int bolckSize = 5;
		
		Pager pager = new Pager(pageNum, totalBoard, pageSize, bolckSize);
		
		Map<String, Object> pagerMap = new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		/*
		Map<String, Object> returnMap = new HashMap<String, Object>();
		returnMap.put("faqList", faqService.getFaqListPager(pagerMap));
		returnMap.put("pager", pager);
		
		model.addAttribute("returnMap", returnMap);
		*/
		model.addAttribute("faqList", faqService.getFaqListPager(pagerMap));
		model.addAttribute("pager", pager);
		
		return "admin/faq/admin_faq_list";
	}
	
	@RequestMapping(value = "/admin_faq_write", method = RequestMethod.GET)
	public String adminFaqWrite() {
		return "admin/faq/admin_faq_write";
	}
	
	@RequestMapping(value = "/admin_faq_write", method = RequestMethod.POST)
	public String adminFaqWrite(@ModelAttribute Faq faq, Model model) {
		
		faqService.addFaq(faq);
		
		model.addAttribute("faq", faqService.getFaqIdx(faq.getIdx()));
		
		return "admin/faq/admin_faq_detail";
	}
	
	@RequestMapping("/admin_faq_detail")
	public String adminFaqDetail(HttpServletRequest request, Model model) {
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		model.addAttribute("faq", faqService.getFaqIdx(idx));
		
		return "admin/faq/admin_faq_detail";
	}
	
	@RequestMapping(value = "/admin_faq_modify", method = RequestMethod.GET)
	public String adminFaqModify(HttpServletRequest request, Model model) {

		int idx = Integer.parseInt(request.getParameter("idx"));
		
		model.addAttribute("faq", faqService.getFaqIdx(idx));
		
		return "admin/faq/admin_faq_modify";
	}
	
	@RequestMapping(value = "/admin_faq_modify", method = RequestMethod.POST)
	public String adminFaqModify(@ModelAttribute Faq faq, Model model) {
		
		faqService.modifyFaq(faq);
		
		model.addAttribute("faq", faqService.getFaqIdx(faq.getIdx()));
		
		return "admin/faq/admin_faq_detail";
	}
	
	@RequestMapping(value = "/admin_faq_delete", method = RequestMethod.POST)
	public String adminFaqRemove(@RequestParam int idx) {
		
		faqService.removeFaq(idx);
		
		return "redirect:/admin_faq";
	}
	
}
