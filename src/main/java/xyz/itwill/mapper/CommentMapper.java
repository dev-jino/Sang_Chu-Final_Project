package xyz.itwill.mapper;

import java.util.List;

import xyz.itwill.dto.Comment;

public interface CommentMapper {
	int insertComment(Comment comment);
	int updateComment(Comment comment);
	int deleteComment(Comment comment);
	List<Comment> selectCommentProductIdx(int productIdx);
	int selectCommentCount(int productIdx);
}
