package xyz.itwill.service;

import java.util.List;

import xyz.itwill.dto.Member;
import xyz.itwill.exception.LoginAuthFailException;
import xyz.itwill.exception.UserinfoExistsException;
import xyz.itwill.exception.UserinfoNotFoundException;

public interface MemberService {
	void addMember(Member member) throws UserinfoExistsException;
	void modifyMember(Member member) throws UserinfoNotFoundException;
	void removeMember(String id) throws UserinfoNotFoundException;
	Member getMember(String id) throws UserinfoNotFoundException;
	List<Member> getMemberList();
	void loginAuth(Member member) throws LoginAuthFailException;
	
	void modifyPayPw(Member member);
	void modifyAddAccount(Member member);
}
