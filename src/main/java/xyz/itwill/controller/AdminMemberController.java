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

import xyz.itwill.dto.Member;
import xyz.itwill.exception.UserinfoNotFoundException;
import xyz.itwill.service.MemberService;
import xyz.itwill.util.Pager;

@Controller
public class AdminMemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/admin_member", method = RequestMethod.GET)
	public String AdminMember(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		int totalBoard = memberService.getMemberCount();
		int pageSize = 10;
		int blockSize = 5;
		
		Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap = new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("memberList", memberService.getMemberListPager(pagerMap));
		model.addAttribute("pager", pager);
		
		return "admin/member/admin_member_list";
	}
	
	@RequestMapping(value = "/admin_member", method = RequestMethod.POST)
	public String AdminMember(@RequestParam(defaultValue = "1") int pageNum, 
				@ModelAttribute Member member, Model model) throws UserinfoNotFoundException {
		int totalBoard = memberService.getMemberCount();
		int pageSize = 10;
		int blockSize = 5;
		
		Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap = new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		memberService.modifyMember(member); 
		
		model.addAttribute("memberList", memberService.getMemberListPager(pagerMap));
		model.addAttribute("pager", pager);

		return "admin/member/admin_member_list";
	}
}
