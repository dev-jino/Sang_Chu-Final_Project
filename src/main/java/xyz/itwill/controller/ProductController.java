package xyz.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.itwill.dto.Member;
import xyz.itwill.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping("/product_list")
	public String Product() {
		return "product/product_list";
	}
	
	
	@RequestMapping("/product_detail")
	public String ProductDetail(Model model, @RequestParam int idx) {
		model.addAttribute("productInfo", productService.getProduct(idx));
		return "product/product_detail";
	}
	
	
	
	
	
	@RequestMapping("/order_detail")
	public String orderDetail(HttpSession session, Model model, @RequestParam int idx) {
		model.addAttribute("productInfo", productService.getProduct(idx));		
		return "product/order_detail";
	}
	
	@RequestMapping(value = "/order_detail", method = RequestMethod.POST)
	public String orderDetail() {
		//Order 테이블에 isnert
		return "product/order_detail";
	}
	
}
