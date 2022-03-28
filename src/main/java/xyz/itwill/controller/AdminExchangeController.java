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

import xyz.itwill.dto.Coin;
import xyz.itwill.exception.UserinfoNotFoundException;
import xyz.itwill.service.CoinService;
import xyz.itwill.service.MemberService;
import xyz.itwill.util.Pager;

@Controller
public class AdminExchangeController {
	@Autowired
	private CoinService coinService;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/admin_exchange")
	public String AdminExchange(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		int totalBoard = coinService.getCoinCount();
		int pageSize = 10;
		int bolckSize = 5;
		
		Pager pager = new Pager(pageNum, totalBoard, pageSize, bolckSize);
		
		Map<String, Object> pagerMap = new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("CoinMemberJoinList", coinService.getCoinListPager(pagerMap));
		model.addAttribute("pager", pager);
		
		return "admin/exchange/admin_exchange_list";
	}
	
	@RequestMapping(value = "/admin_exchange", method = RequestMethod.POST)
	public String AdminExchange(@ModelAttribute Coin coin, Model model) throws UserinfoNotFoundException {
		
		coinService.modifyCoinStatus(coin);
		
		if (coin.getStatus() == 9) {
			Map<String, Object> memberMap = new HashMap<String, Object>();
			memberMap.put("id", coin.getMemberId());
			memberMap.put("coin", coin.getExCoin());
			memberService.modifyMemberCoin(memberMap);
		}
		
		return "redirect:/admin_exchange";
	}
}
