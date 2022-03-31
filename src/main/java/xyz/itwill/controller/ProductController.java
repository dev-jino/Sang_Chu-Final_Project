package xyz.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.itwill.dto.Comment;
import xyz.itwill.dto.Member;
import xyz.itwill.dto.Order;
import xyz.itwill.service.CommentService;
import xyz.itwill.service.OrderService;
import xyz.itwill.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CommentService commentService;
	
	@RequestMapping("/product_list")
	public String Product() {
		return "product/product_list";
	}
	
	
	@RequestMapping(value = "/product_detail", method = RequestMethod.GET)
	public String ProductDetail(Model model, @RequestParam int idx) {
		model.addAttribute("productInfo", productService.getProduct(idx));
		model.addAttribute("commentList", commentService.getCommentProductIdx(idx));
		model.addAttribute("commentCount", commentService.getCommentCount(idx));
		return "product/product_detail";
	}

	@RequestMapping(value = "/product_detail", method = RequestMethod.POST)
	public String ProductDetail(@ModelAttribute Comment comment, Model model, @RequestParam int idx) {
		if (comment.getStatus() == 1) {
			commentService.addComment(comment);
		} else if (comment.getStatus() == 2) {
			commentService.modifyComment(comment);
		} else if (comment.getStatus() == 9) {
			commentService.removeComment(comment);
		}
		
		model.addAttribute("productInfo", productService.getProduct(idx));
		model.addAttribute("commentList", commentService.getCommentProductIdx(idx));
		model.addAttribute("commentCount", commentService.getCommentCount(idx));
		return "product/product_detail";
	}
	
	
	
	@RequestMapping(value = "/order_detail", method = RequestMethod.GET)
	public String orderDetail(HttpSession session, Model model, @RequestParam int idx) {
		model.addAttribute("productInfo", productService.getProduct(idx));		
		return "product/order_detail";
	}
	
	@RequestMapping(value = "/order_detail", method = RequestMethod.POST)
	public String orderDetail(@ModelAttribute Order order, @RequestParam int idx, Model model) {
		orderService.addOrder(order);
		productService.modifyBuyProduct(idx);
		
		model.addAttribute("payInfo", productService.getJoinPOList());
		
		return "redirect:/product_detail?idx="+idx;
	}
	
}
