package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import xyz.itwill.dto.Member;

public interface MemberDAO {
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String id);
	Member selectMember(String id);
	List<Member> selectMemberList();
	int mypagePaypwUpdate(Member member);
	int mypageAddAccount(Member member);
	int exchangeCoin(Map<String, Object> map);
	int updateMemberCoin(Map<String, Object> map);
	int selectMemberCount();
	List<Member> selectMemberListPager(Map<String, Object> map);
}
