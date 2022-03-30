package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Qna;

public interface QnaService {
	int addQna(Qna qna);
	int removeQna(int idx);
	int getQnaCount();
	Qna getQnaComment(int idx);
	Qna getQna(int idx);
	List<Qna> getQnaList(Map<String, Object> map);
	int modifyAdminQnaAnswer(Qna qna);
	int removeAdminQnaComment(int idx);
}
