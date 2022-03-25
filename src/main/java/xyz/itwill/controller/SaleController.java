package xyz.itwill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SaleController {
	@RequestMapping("/sale")
	public String Sale() {
		return "sale/sale_form";
	}
}
