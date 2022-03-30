package xyz.itwill.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import xyz.itwill.dto.Qna;
import xyz.itwill.service.QnaService;
import xyz.itwill.util.Pager;

@Controller
public class QnaController {

	@Autowired
	private WebApplicationContext context;

	@Autowired
	private QnaService qnaService;

	@RequestMapping(value = "/qna", method = RequestMethod.GET)

	public String qna(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		// model.addAttribute("qnaList",qnaService.getQnaList());
		int totalBoard = qnaService.getQnaCount();
		int pageSize = 5;
		int blockSize = 5;

		Pager pager = new Pager(pageNum, totalBoard, pageSize, blockSize);

		// System.out.println(startRow);
		// System.out.println(endRow);

		Map<String, Object> pagerMap = new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());

		model.addAttribute("qnaList", qnaService.getQnaList(pagerMap));
		model.addAttribute("pager", pager);

		// model.addAttribute("qnaList",qnaService.getQnaList(startRow));

		return "qna/qna_list";
	}

	@RequestMapping(value = "/qna_write", method = RequestMethod.GET)
	public String qnaWrite() {
		return "qna/qna_write";
	}

	@RequestMapping(value = "/qna_write", method = RequestMethod.POST)
	public String qnaWrite(@ModelAttribute Qna qna) throws IllegalStateException, IOException {
		// 알아서 널로 처리한다.
		// 파일시스템 경로 받는다.
		String uploadDir = context.getServletContext().getRealPath("/resources/img/qna");
		// 전달파일명 받아
		
		MultipartFile orimg = qna.getFile();

		String orFilename = orimg.getOriginalFilename();

		String upload = System.currentTimeMillis() + "";
		
		qna.setOrImg(orFilename);
		qna.setUpImg(upload);
		
		qna.getFile().transferTo(new File(uploadDir,upload));
		
		qnaService.addQna(qna);
		// System.out.println("파일이름
		// =================================================================="+orFilename);
		/*
		 * Map<String, Object> uploadMap = new HashMap<String, Object>();
		 * uploadMap.put("memberId", qnaId); uploadMap.put("title", title);
		 * uploadMap.put("content", content); uploadMap.put("orImg", orFilename);
		 * uploadMap.put("upImg", upFilename);
		 * 
		 * uploadFile.transferTo(new File(uploadDir, upFilename));
		 * 
		 * qnaService.addQna(uploadMap);
		 * 
		 * 
		 * 
		 * 
		 */
		return "redirect:/qna";
	}

}
