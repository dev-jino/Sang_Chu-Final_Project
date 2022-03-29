package xyz.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.itwill.dto.Member;
import xyz.itwill.mapper.MemberMapper;

@Repository
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).insertMember(member);

	}

	@Override
	public int updateMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateMember(member);

	}

	@Override
	public int deleteMember(String id) {
		return sqlSession.getMapper(MemberMapper.class).deleteMember(id);

	}

	@Override
	public List<Member> selectMemberList() {
		return sqlSession.getMapper(MemberMapper.class).selectMemberList();

	}

	@Override
	public int mypagePaypwUpdate(Member member) {
		return sqlSession.getMapper(MemberMapper.class).mypagePaypwUpdate(member);
	}

	@Override
	public int mypageAddAccount(Member member) {
		return sqlSession.getMapper(MemberMapper.class).mypageAddAccount(member);
	}

	@Override
	public Member selectMember(String id) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(id);
	}

	@Override
	public int exchangeCoin(Map<String, Object> map) {
		return sqlSession.getMapper(MemberMapper.class).exchangeCoin(map);
	}
	
	@Override
	public int updateMemberCoin(Map<String, Object> map) {
		return sqlSession.getMapper(MemberMapper.class).updateMemberCoin(map);
	}

	@Override
	public int selectMemberCount() {
		return sqlSession.getMapper(MemberMapper.class).selectMemberCount();
	}

	@Override
	public List<Member> selectMemberListPager(Map<String, Object> map) {
		return sqlSession.getMapper(MemberMapper.class).selectMemberListPager(map);
	}

	@Override
	public Member findId(Map<String, Object> map) {
		
		return sqlSession.getMapper(MemberMapper.class).findId(map);
		
	}

	@Override
	public int findPassword(Map<String, Object> map) {
		return sqlSession.getMapper(MemberMapper.class).findPassword(map);
	}

}
