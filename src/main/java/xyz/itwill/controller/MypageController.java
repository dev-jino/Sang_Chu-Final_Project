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

import xyz.itwill.dto.Coin;
import xyz.itwill.dto.Member;
import xyz.itwill.exception.UserinfoNotFoundException;
import xyz.itwill.service.CoinService;
import xyz.itwill.service.FavoriteService;
import xyz.itwill.service.MemberService;
import xyz.itwill.service.OrderService;
import xyz.itwill.service.ProductService;
import xyz.itwill.service.QnaService;
import xyz.itwill.util.Pager;


//로그인 사용자만 사용할 수 있도록 인터셉터 사용해야함
@Controller
public class MypageController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private MemberService memberSerivce;
	
	@Autowired
	private CoinService coinService;
	
	@Autowired
	private FavoriteService favoriteService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private QnaService qnaService;

	
	//회원의 주문 관련 상품 목록
	@RequestMapping(value = "/mypage_list", method = RequestMethod.GET)
	public String sellProductList(@RequestParam(defaultValue = "1") int status, @RequestParam(defaultValue = "1") int pageNum, Model model, HttpSession session) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("status", status);
		map.put("memberId", loginMember.getId());
//		model.addAttribute("productStatusList", productService.getStatusProductList(map));
		model.addAttribute("status", status);

		//상품상태별 개수
		model.addAttribute("countProduct", productService.getCountProduct(map));
		
		
		//페이징 처리
		int totalBoard = productService.getCountProduct(map);
		int pageSize = 9;
		int blockSize = 5;
		
		Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap = new HashMap<String, Object>();
		pagerMap.put("status", status);
		pagerMap.put("memberId", loginMember.getId());
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("productPaging", productService.getProductPagingList(pagerMap));
		model.addAttribute("pager", pager);
		
		return "mypage/mypage_list";
	}
	
	
	//판매하기 눌렀을 때 상품의 상태를 판매완료로 변경
	@RequestMapping(value = "/mypage_list", method = RequestMethod.POST)
	public String sellProductList(@RequestParam(defaultValue = "1") int status, @RequestParam int idx, HttpSession session, @RequestParam int price) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("idx", idx);
		map.put("memberId", loginMember.getId());
		
		//판매자의 대기 -> 판매완료 리스트로 가는 메소드
		productService.modifyStatusProduct(map);
		
		Map<String, Object> coinMap = new HashMap<String, Object>();
		coinMap.put("id", loginMember.getId());
		coinMap.put("price", price);
		
		productService.coinPlus1(coinMap);

		return "redirect:/mypage_list?status=3";
	}
	
	
	@RequestMapping(value = "/mypage_buy")
	public String buyProductList(Model model, HttpSession session) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		model.addAttribute("buyList", productService.getBuyList(loginMember.getId()));
		
		
		return "mypage/mypage_buy";
	}
	
	
	
	//찜목록
	@RequestMapping(value = "/mypage_favorite", method = RequestMethod.GET)
	public String mypageFavorite(@RequestParam(defaultValue = "1") int pageNum, Model model, HttpSession session) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		model.addAttribute("favoriteList", favoriteService.getFavoriteList(loginMember.getId()));
		
		
		//페이징 처리
		int totalBoard = favoriteService.getCountFavorite(loginMember.getId());
		int pageSize = 9;
		int blockSize = 5;
		
		Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap = new HashMap<String, Object>();
		pagerMap.put("memberId", loginMember.getId());
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("favoritePaging", favoriteService.getFavoritePaging(pagerMap));
		model.addAttribute("pager", pager);
		return "mypage/mypage_favorite";
	}
	
	
	
	
	
	
	//환전 신청
	@RequestMapping(value = "/mypage_exchange", method = RequestMethod.GET)
	public String mypageExchange(HttpSession session, Model model) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		model.addAttribute("coin", loginMember.getCoin());
		model.addAttribute("id", loginMember.getId());
		return "mypage/mypage_exchange";
	}
	
	@RequestMapping(value = "/mypage_exchange", method = RequestMethod.POST)
	public String mypageExchange(@RequestParam String formStatus, @ModelAttribute Coin coin, @ModelAttribute Member member, HttpSession session) throws UserinfoNotFoundException {
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		if(formStatus.equals("현금환전")) {
		
			//상추->현금 환전
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", coin.getMemberId());
			map.put("coin", coin.getExCoin());
			coinService.addCoin(coin);
			memberSerivce.modifyExchangeCoin(map);
		} else {
			
			//상추 충전
			Map<String, Object> map2 = new HashMap<String, Object>();
			map2.put("id", member.getId());
			map2.put("coin", member.getCoin());
			memberSerivce.modifyExchangeCash(map2);
		}
		
		session.setAttribute("loginMember", memberSerivce.getMember(loginMember.getId()));
		return "redirect:/mypage_exchange";
	}

	
	

	
	//회원정보 수정
	@RequestMapping(value = "/mypage_info_update", method = RequestMethod.GET)
	public String mypageInfoUpdate(Model model, HttpSession session) {
		model.addAttribute("member", session.getAttribute("loginMember"));
		return "mypage/mypage_info_update";
	}
	
	@RequestMapping(value = "/mypage_info_update", method = RequestMethod.POST)
	public String mypageInfoUpdate(@ModelAttribute Member member, HttpSession session) throws UserinfoNotFoundException {
		memberSerivce.modifyMember(member);
		session.setAttribute("loginMember", memberSerivce.getMember(member.getId()));
		return "redirect:/mypage_info_update";
	}
	
	
	
	
	
//	//결제비밀번호 수정
//	@RequestMapping(value = "/mypage_pay_password", method = RequestMethod.GET)
//	public String mypagePayPassword(HttpSession session, Model model) {
//		Member loginMember = (Member)session.getAttribute("loginMember");
//		model.addAttribute("id",loginMember.getId());
//		return "mypage/mypage_pay_password";
//	}
//	
//	@RequestMapping(value = "/mypage_pay_password", method = RequestMethod.POST)
//	public String mypagePayPassword(@ModelAttribute Member member) {
//		memberSerivce.modifyPayPw(member);
//		return "redirect:/mypage_pay_password";
//	}
	
	
	
	
	//보유중인 상추
	@RequestMapping(value = "/mypage_pay", method = RequestMethod.GET)
	public String mypagePay(Model model, HttpSession session) throws UserinfoNotFoundException {
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		model.addAttribute("member", session.getAttribute("loginMember"));
		session.setAttribute("loginMember", loginMember);
		return "mypage/mypage_pay";
	}
	
	
	
	
	//회원탈퇴
	@RequestMapping(value = "/delete_member", method = RequestMethod.GET)
	public String deleteMember(HttpSession session) throws UserinfoNotFoundException {
		Member loginMember = (Member)session.getAttribute("loginMember");
		memberSerivce.removeMember(loginMember.getId());
		session.invalidate();
		return "mypage/delete_member";
	}
	
}
