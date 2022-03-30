package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Qna;

public interface QnaDAO {
	int insertQna(Qna qna);
	int deleteQna(int idx);
	int selectQnaCount();
	Qna SelectQnaComment(int idx);
	Qna selectQna(int idx);
	List<Qna> selectQnaList(Map<String, Object> map);
	int updateAdminQnaAnswer(Qna qna);
	int deleteAdminQnaComment(int idx);
	 int updateQnaFile(Qna qna);
	 int updateQna(Qna qna);
}
