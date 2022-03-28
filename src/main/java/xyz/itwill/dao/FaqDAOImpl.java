package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Faq;
import xyz.itwill.mapper.FaqMapper;

@Repository
public class FaqDAOImpl implements FaqDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertFaq(Faq faq) {
		return sqlSession.getMapper(FaqMapper.class).insertFaq(faq);
	}

	@Override
	public int updateFaq(Faq faq) {
		return sqlSession.getMapper(FaqMapper.class).updateFaq(faq);
	}

	@Override
	public int deleteFaq(int idx) {
		return sqlSession.getMapper(FaqMapper.class).deleteFaq(idx);
	}
	
	@Override
	public Faq selectFaqIdx(int idx) {
		return sqlSession.getMapper(FaqMapper.class).selectFaqIdx(idx);
	}
	
	@Override
	public List<Faq> selectFaqListCategory(String category) {
		return sqlSession.getMapper(FaqMapper.class).selectFaqListCategory(category);
	}

	@Override
	public int selectFaqCount() {
		return sqlSession.getMapper(FaqMapper.class).selectFaqCount();
	}

	@Override
	public List<Faq> selectFaqListPager(Map<String, Object> map) {
		return sqlSession.getMapper(FaqMapper.class).selectFaqListPager(map);
	}

	@Override
	public List<Faq> selectFaqList() {
		return sqlSession.getMapper(FaqMapper.class).selectFaqList();
	}
}
