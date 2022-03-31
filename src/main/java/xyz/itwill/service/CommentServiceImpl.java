package xyz.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.itwill.dao.CommentDAO;
import xyz.itwill.dto.Comment;

@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentDAO commentDAO;

	@Override
	public int addComment(Comment comment) {
		return commentDAO.insertComment(comment);
	}

	@Override
	public int modifyComment(Comment comment) {
		return commentDAO.updateComment(comment);
	}

	@Override
	public int removeComment(Comment comment) {
		return commentDAO.deleteComment(comment);
	}
	
	@Override
	public List<Comment> getCommentProductIdx(int productIdx) {
		return commentDAO.selectCommentProductIdx(productIdx);
	}

	@Override
	public int getCommentCount(int productIdx) {
		return commentDAO.selectCommentCount(productIdx);
	}
}
