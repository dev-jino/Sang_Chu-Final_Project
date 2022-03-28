package xyz.itwill.dao;

import java.util.List;

import xyz.itwill.dto.Member;

public interface MemberDAO {
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String id);
	Member selectMember(String id);
	List<Member> selectMemberList();
	int mypagePaypwUpdate(Member member);
	int mypageAddAccount(Member member);
	int exchangeCoin(Member member);
}
