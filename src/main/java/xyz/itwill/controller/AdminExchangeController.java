package xyz.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import xyz.itwill.service.CoinService;

@Controller
public class AdminExchangeController {
	@Autowired
	private CoinService coinService;
	
	@RequestMapping("/admin_exchange")
	public String AdminExchange(Model model) {
		model.addAttribute("CoinMemberJoinList", coinService.getCoinList());
		return "admin/exchange/admin_exchange_list";
	}
}
