package xyz.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import xyz.itwill.dao.MemberDAO;
import xyz.itwill.dto.Member;
import xyz.itwill.exception.LoginAuthFailException;
import xyz.itwill.exception.UserinfoExistsException;
import xyz.itwill.exception.UserinfoNotFoundException;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	@Transactional
	@Override
	public void addMember(Member member) {
		memberDAO.insertMember(member);
	}

	@Override
	public void modifyMember(Member member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeMember(String id) {
		memberDAO.deleteMember(id);
	}

	@Override
	public Member getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> getMemberList() {
		return memberDAO.selectMemberList();
	}

}