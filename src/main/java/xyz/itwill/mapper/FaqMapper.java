package xyz.itwill.mapper;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Faq;

public interface FaqMapper {
	int insertFaq(Faq faq);
	int updateFaq(Faq faq);
	int deleteFaq(int idx);	
	Faq selectFaqIdx(int idx);
	List<Faq> selectFaqListCategory(String category);
	int selectFaqCount();
	List<Faq> selectFaqListPager(Map<String, Object> map);
	List<Faq> selectFaqList();
}
