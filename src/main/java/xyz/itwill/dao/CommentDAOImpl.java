package xyz.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Comment;
import xyz.itwill.mapper.CommentMapper;

@Repository
public class CommentDAOImpl implements CommentDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertComment(Comment comment) {
		return sqlSession.getMapper(CommentMapper.class).insertComment(comment);
	}

	@Override
	public int updateComment(Comment comment) {
		return sqlSession.getMapper(CommentMapper.class).updateComment(comment);
	}
	
	@Override
	public int deleteComment(Comment comment) {
		return sqlSession.getMapper(CommentMapper.class).deleteComment(comment);
	}
	
	@Override
	public List<Comment> selectCommentProductIdx(int productIdx) {
		return sqlSession.getMapper(CommentMapper.class).selectCommentProductIdx(productIdx);
	}

	@Override
	public int selectCommentCount(int productIdx) {
		return sqlSession.getMapper(CommentMapper.class).selectCommentCount(productIdx);
	}
}
