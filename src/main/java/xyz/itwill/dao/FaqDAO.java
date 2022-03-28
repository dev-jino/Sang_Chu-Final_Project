package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Faq;
import xyz.itwill.dto.Member;

public interface FaqDAO {
	int insertFaq(Faq faq);
	int updateFaq(Faq faq);
	int deleteFaq(int idx);	
	Faq selectFaqIdx(int idx);
	List<Faq> selectFaqListCategory(String category);
	int selectFaqCount();
	List<Faq> selectFaqListPager(Map<String, Object> map);
	List<Faq> selectFaqList();
}
