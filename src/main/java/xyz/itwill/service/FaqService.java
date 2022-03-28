package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Faq;

public interface FaqService {
	int addFaq(Faq faq);
	int modifyFaq(Faq faq);
	int removeFaq(int idx);
	Faq getFaqIdx(int idx);
	List<Faq> getFaqListCategory(String category);
	int getFaqCount();
	List<Faq> getFaqListPager(Map<String, Object> map);
	List<Faq> getFaqList();
}
