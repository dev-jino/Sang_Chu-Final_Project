package xyz.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.itwill.service.ProductService;
import xyz.itwill.util.Pager;

@Controller
public class AdminProductController {
	
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping("/admin_product")
	public String adminProduct(@RequestParam(defaultValue = "1") int pageNum,Model model) {
		int totalBoard = productService.getProductCountAdmin();
		int pageSize = 5;
		int blockSize = 5;
		
		Pager pager = new Pager(pageNum,totalBoard,pageSize,blockSize);
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("productListAdmin",productService.getProductAdmin(pageMap));
		model.addAttribute("pager",pager);
		
		
		
		
		
		return "admin/product/admin_product_list";
	}
	@RequestMapping("/admin_product_add")
	public String adminProductAdd(@RequestParam int idx,@RequestParam int status) {
		Map<String, Object> addMap = new HashMap<String, Object>();
		addMap.put("idx", idx);
		addMap.put("status", status);
		
		productService.updateStatusAdmin(addMap);
		
		
		return "redirect:/admin_product";
		
		
	}

	
}
