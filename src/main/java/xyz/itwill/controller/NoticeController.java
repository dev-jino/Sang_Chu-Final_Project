package xyz.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.itwill.service.NoticeService;
import xyz.itwill.util.Pager;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	@RequestMapping("/notice")
	public String notice(@RequestParam(defaultValue = "1") int pageNum, Model model) {

		int totalBoard = noticeService.getNoticeCount();
		int pageSize = 5;
		int blockSize = 5;

		Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);

		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
        model.addAttribute("replaceChar","\n");

		model.addAttribute("noticeList", noticeService.getNoticeList(pageMap));
		model.addAttribute("pager", pager);

		return "notice/notice_list";
	}
}
