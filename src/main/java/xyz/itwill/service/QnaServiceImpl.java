package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.QnaDAO;
import xyz.itwill.dto.Qna;

@Service
public class QnaServiceImpl implements QnaService{
	@Autowired
	private QnaDAO qnaDAO;

	@Override
	public int addQna(Qna qna) {
	
		return qnaDAO.insertQna(qna);
	}

	@Override
	public int removeQna(int idx) {
		return qnaDAO.deleteQna(idx);
		
	}

	@Override
	public int getQnaCount() {
		return qnaDAO.selectQnaCount();
	}

	@Override
	public Qna getQnaComment(int idx) {
		return qnaDAO.SelectQnaComment(idx);
	}

	@Override
	public Qna getQna(int idx) {
		
		return qnaDAO.selectQna(idx);
	}

	@Override
	public List<Qna> getQnaList(Map<String, Object> map) {
		return qnaDAO.selectQnaList(map);
	}

	@Override
	public int modifyAdminQnaAnswer(Qna qna) {
		return qnaDAO.updateAdminQnaAnswer(qna);
	}

	@Override
	public int removeAdminQnaComment(int idx) {
		return qnaDAO.deleteAdminQnaComment(idx);
	}

	
	
	
}
