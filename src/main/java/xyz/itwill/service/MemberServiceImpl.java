package xyz.itwill.service;

import java.util.List;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;
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
	public void addMember(Member member) throws UserinfoExistsException {
		if(memberDAO.selectMember(member.getId())!=null) {
			throw new UserinfoExistsException("이미 사용중인 아이디를 입력하였습니다.", member);
		}
		
		member.setPassword(BCrypt.hashpw(member.getPassword(), BCrypt.gensalt()));
		memberDAO.insertMember(member);
	}

	@Override
	public void modifyMember(Member member) throws UserinfoNotFoundException {
		if(memberDAO.selectMember(member.getId())==null) {
			throw new UserinfoNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
		}
		
		String password=member.getPassword();
		if(password!=null && !password.equals("")) {
			member.setPassword(BCrypt.hashpw(password, BCrypt.gensalt()));
		}
		
		memberDAO.updateMember(member);
	}

	@Override
	public void removeMember(String id) throws UserinfoNotFoundException {
		if(memberDAO.selectMember(id)==null) {
			throw new UserinfoNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
		}
		memberDAO.deleteMember(id);
	}

	@Override
	public List<Member> getMemberList() {
		return memberDAO.selectMemberList();
	}

	@Override
	public Member getMember(String id) throws UserinfoNotFoundException {
		Member member=memberDAO.selectMember(id);
		if(member==null) {
			throw new UserinfoNotFoundException("아이디의 회원정보가 존재하지 않습니다.");
		}
		return member;
	}
	
	//로그인 인증 실패 : 예외 발생, 로그인 인증 성공 : 예외 미발생
	@Override
	public void loginAuth(Member member) throws LoginAuthFailException {
		Member authMember=memberDAO.selectMember(member.getId());
		if(authMember==null||authMember.getStatus()==2) {
			throw new LoginAuthFailException("아이디의 회원정보가 존재하지 않습니다.", member.getId());	
		}
		if(!BCrypt.checkpw(member.getPassword(), authMember.getPassword())) {
			throw new LoginAuthFailException("아이디가 없거나 비밀번호가 맞지 않습니다.", member.getId());
		}
	}
	
	
	@Override
	public void modifyPayPw(Member member) {
		memberDAO.mypagePaypwUpdate(member);
		
	}

	@Override
	public void modifyAddAccount(Member member) {
		memberDAO.mypageAddAccount(member);
		
	}

	@Override
	public void modifyExchangeCoin(Map<String, Object> map) {
		memberDAO.exchangeCoin(map);
	}
	
	@Override
	public int modifyMemberCoin(Map<String, Object> map) {
		return memberDAO.updateMemberCoin(map);
	}

	@Override
	public int getMemberCount() {
		return memberDAO.selectMemberCount();
	}

	@Override
	public List<Member> getMemberListPager(Map<String, Object> map) {
		return memberDAO.selectMemberListPager(map);
	}

	@Override
	public Member getFindId(Map<String, Object> map) {
		
		return memberDAO.findId(map);
	}

	@Override
	public int getFindPassword(Map<String, Object> map) {
		
		return memberDAO.findPassword(map);

	}

	@Override
	public void modifyExchangeCash(Map<String, Object> map) {
		memberDAO.exchangeCash(map);
		
	}
}
