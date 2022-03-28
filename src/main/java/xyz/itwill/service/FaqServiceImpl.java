package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.FaqDAO;
import xyz.itwill.dto.Faq;

@Service
public class FaqServiceImpl implements FaqService {
	@Autowired
	private FaqDAO faqDAO;

	@Override
	public int addFaq(Faq faq) {
		return faqDAO.insertFaq(faq);
	}

	@Override
	public int modifyFaq(Faq faq) {
		return faqDAO.updateFaq(faq);
	}

	@Override
	public int removeFaq(int idx) {
		return faqDAO.deleteFaq(idx);
	}
	
	@Override
	public Faq getFaqIdx(int idx) {
		return faqDAO.selectFaqIdx(idx);
	}
	
	@Override
	public List<Faq> getFaqListCategory(String category) {
		return faqDAO.selectFaqListCategory(category);
	}

	@Override
	public int getFaqCount() {
		return faqDAO.selectFaqCount();
	}
	
	@Override
	public List<Faq> getFaqListPager(Map<String, Object> map) {
		return faqDAO.selectFaqListPager(map);
	}

	@Override
	public List<Faq> getFaqList() {
		return faqDAO.selectFaqList();
	}
}
