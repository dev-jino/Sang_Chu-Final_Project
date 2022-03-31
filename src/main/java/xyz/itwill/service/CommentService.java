package xyz.itwill.service;

import java.util.List;

import xyz.itwill.dto.Comment;

public interface CommentService {
	int addComment(Comment comment);
	int modifyComment(Comment comment);
	int removeComment(Comment comment);
	List<Comment> getCommentProductIdx(int productIdx);
	int getCommentCount(int productIdx);
}
