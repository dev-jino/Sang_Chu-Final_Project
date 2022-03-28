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

import xyz.itwill.dto.Notice;
import xyz.itwill.service.NoticeService;
import xyz.itwill.util.Pager;


@Controller
public class AdminNoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/admin_notice")
	public String adminNotice(@RequestParam(defaultValue = "1") int pageNum,Model model) {
		int totalBoard = noticeService.getNoticeCount();
		int pageSize = 10;
		int blockSize = 5;
		
		Pager pager = new Pager(pageNum,totalBoard,pageSize,blockSize);
		
		Map<String, Object>pageMap = new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("noticeList",noticeService.getNoticeList(pageMap));
		model.addAttribute("pager",pager);
		
		
		return "admin/notice/admin_notice_list";
		}
	

	@RequestMapping("/admin_notice_detail")
	public String adminNoticeDetail(@RequestParam int idx ,Model model) {
		
		model.addAttribute("noticeDetail",noticeService.getNotice(idx));
		
		
		return "admin/notice/admin_notice_detail";
	}
	
	@RequestMapping("/admin_notice_delete")
	public String adminNoticeDelete(@RequestParam int idx) {
		noticeService.removeNotice(idx);
		
		
		
		return "redirect:/admin_notice";
	}
	
	
	
	
	@RequestMapping("/admin_notice_write")
	public String adminNoticeWrite() {
		return "admin/notice/admin_notice_write";
	}
	
	
	@RequestMapping(value ="/admin_notice_add" ,method = RequestMethod.POST)
	public String adminNoticeAdd(@ModelAttribute Notice notice) {
		noticeService.addNotice(notice);
		
		
		return "redirect:/admin_notice";
	}
	
	
}
