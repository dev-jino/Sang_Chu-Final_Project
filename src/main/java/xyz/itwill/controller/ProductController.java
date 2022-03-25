package xyz.itwill.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	@RequestMapping("/product_list")
	public String Product() {
		return "product/product_list";
	}
	
	@RequestMapping("/product_detail")
	public String ProductDetail() {
		return "product/product_detail";
	}
}
