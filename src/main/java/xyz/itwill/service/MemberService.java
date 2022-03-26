package xyz.itwill.service;

import java.util.List;

import xyz.itwill.dto.Member;
import xyz.itwill.exception.LoginAuthFailException;
import xyz.itwill.exception.UserinfoExistsException;
import xyz.itwill.exception.UserinfoNotFoundException;

public interface MemberService {
	void addMember(Member member);
	void modifyMember(Member member);
	void removeMember(String id);
	Member getMember(String id);
	List<Member> getMemberList();
	void modifyPayPw(Member member);
	void modifyAddAccount(Member member);
}
