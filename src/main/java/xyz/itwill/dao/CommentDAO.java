package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.Comment;

public interface CommentDAO {
	int insertComment(Comment comment);
	int updateComment(Comment comment);
	int deleteComment(Comment comment);
	List<Comment> selectCommentProductIdx(int productIdx);
	int selectCommentCount(int productIdx);
}
