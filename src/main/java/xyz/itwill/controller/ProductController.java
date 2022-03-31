package xyz.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import xyz.itwill.dto.Comment;
import xyz.itwill.dto.Favorite;
import xyz.itwill.dto.Member;
import xyz.itwill.dto.Order;
import xyz.itwill.service.CommentService;
import xyz.itwill.service.FavoriteService;
import xyz.itwill.service.OrderService;
import xyz.itwill.service.ProductService;
import xyz.itwill.util.Pager;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CommentService commentService;
	
	@Autowired
	private FavoriteService favoriteService;
	
	@RequestMapping(value = "/product_list" ,method = RequestMethod.GET)
	public String Product(@RequestParam(defaultValue = "1")int pageNum , @RequestParam(defaultValue = "") String category1,@RequestParam(defaultValue = "") String category2,@RequestParam(defaultValue = "") String searchKeyword ,Model model) {
		
		
		
		
			int pageSize = 6;
			int blockSize= 5;
			
			//키워드가 있을떄 : 검색시 사용
			if(!searchKeyword.equals("")) {
				
				int totalBoard = productService.getSearchCount(searchKeyword);
				
				
				Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
				Map<String, Object> mapPage = new HashMap<String, Object>();
				mapPage.put("startRow", pager.getStartRow());
				mapPage.put("endRow", pager.getEndRow());
				mapPage.put("searchKeyword",searchKeyword);
				
				model.addAttribute("productList",productService.getSearch(mapPage));
				model.addAttribute("searchKeyword",searchKeyword);
				model.addAttribute("pager", pager);
				model.addAttribute("total",totalBoard);
				
				return "product/product_list";
				
				
				
			}else {
				
				//카테고리가 둘다 없을때 : 전체검색  
				if(category1.equals("")&&category2.equals("")){
					int totalBoard =  productService.getAllCount();
					
					Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
					
				
					Map<String, Object> mapPage = new HashMap<String, Object>();
					mapPage.put("startRow", pager.getStartRow());
					mapPage.put("endRow", pager.getEndRow());
					mapPage.put("category1", null);
					mapPage.put("category2", null);
					
					model.addAttribute("productList",productService.getListProductTest(mapPage));
					model.addAttribute("pager",pager);
					model.addAttribute("total",totalBoard);
					
					
					//카테고리가 둘다 있을때 : 큰 항목 검색
				}else if (!category1.equals("")&&!category2.equals("")) {
					//pageCount 지정
					Map<String, Object> pageCount = new HashMap<String, Object>();
					pageCount.put("category1", category1);
					pageCount.put("category2", category2);
					int totalBoard =  productService.getCountProductTest(pageCount);
					Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
					
					//map 에 삽입
					Map<String,Object> mapPage = new HashMap<String,Object>();
					mapPage.put("category1", category1);
					mapPage.put("category2", category2);
					mapPage.put("startRow", pager.getStartRow());
					mapPage.put("endRow", pager.getEndRow());
					
					model.addAttribute("productList",productService.getListProductTest(mapPage));
					model.addAttribute("pager",pager);
					model.addAttribute("total",totalBoard);
													
					//1번 카테고리만 있을 때 : 작은항목1검색
					
				}else if(!category1.equals("")&&category2.equals("")) {
					Map<String, Object> pageCount = new HashMap<String, Object>();
					pageCount.put("category1", category1);
					pageCount.put("category2", null);
					
					
					int totalBoard = productService.getCountProductTest(pageCount);
					Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
					
					Map<String,Object> mapPage = new HashMap<String,Object>();
					mapPage.put("category1", category1);
					mapPage.put("category2",null);
					
					mapPage.put("startRow", pager.getStartRow());
					mapPage.put("endRow", pager.getEndRow());
					
					model.addAttribute("productList",productService.getListProductTest(mapPage));
					model.addAttribute("pager",pager);
					model.addAttribute("total",totalBoard);
					
					//2번 카테고리만 있을때 : 작은항복 2 검색
				}else if(category1.equals("")&&!category2.equals("")) {
					Map<String, Object> pageCount = new HashMap<String, Object>();
					pageCount.put("category1", null);
					pageCount.put("category2", category2);
					int totalBoard =  productService.getCountProductTest(pageCount);
					Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
					
					
					Map<String,Object> mapPage = new HashMap<String,Object>();
					mapPage.put("category2", category2);
					mapPage.put("category1", null);
					mapPage.put("startRow", pager.getStartRow());
					mapPage.put("endRow", pager.getEndRow());
					
					model.addAttribute("productList",productService.getListProductTest(mapPage));
					model.addAttribute("pager",pager);
					model.addAttribute("total",totalBoard);
				}
				
			model.addAttribute("category1",category1);
			return "product/product_list";
		
			}
			
			
						
			
		
	}
	@RequestMapping(value ="/product_list",method = RequestMethod.POST)
	public String Product(@RequestParam(defaultValue = "1")int pageNum ,@RequestParam String searchKeyword,Model model) {
		int totalBoard = productService.getSearchCount(searchKeyword);
		int pageSize = 6;
		int blockSize= 5;
		
		Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
		Map<String, Object> mapPage = new HashMap<String, Object>();
		mapPage.put("startRow", pager.getStartRow());
		mapPage.put("endRow", pager.getEndRow());
		mapPage.put("searchKeyword",searchKeyword);
		
		model.addAttribute("productList",productService.getSearch(mapPage));
		model.addAttribute("searchKeyword",searchKeyword);
		model.addAttribute("pager", pager);
		model.addAttribute("total",totalBoard);
		
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
	public String ProductDetail(@ModelAttribute Favorite favorite ,@ModelAttribute Comment comment, Model model, @RequestParam int idx, @RequestParam(defaultValue = "0") int pStatus) {
		if (comment.getStatus() == 1) {
			commentService.addComment(comment);
		} else if (comment.getStatus() == 2) {
			commentService.modifyComment(comment);
		} else if (comment.getStatus() == 9) {
			commentService.removeComment(comment);
		} else if (pStatus == 9) {
			productService.removeAdminProduct(idx);
			return "redirect:/product_list";
		}
		
		model.addAttribute("productInfo", productService.getProduct(idx));
		model.addAttribute("commentList", commentService.getCommentProductIdx(idx));
		model.addAttribute("commentCount", commentService.getCommentCount(idx));
		
		favoriteService.addFavorite(favorite);
		
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
