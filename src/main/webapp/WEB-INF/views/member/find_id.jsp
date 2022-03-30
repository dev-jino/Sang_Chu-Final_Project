<%@page import="xyz.itwill.mapper.MemberMapper"%>
<%@page import="xyz.itwill.service.MemberServiceImpl"%>
<%@page import="xyz.itwill.service.MemberService"%>
<%@page import="xyz.itwill.dao.MemberDAOImpl"%>
<%@page import="xyz.itwill.dao.MemberDAO"%>
<%@page import="xyz.itwill.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html><html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<title>상추마켓 : 아이디 찾기</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/id.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/member.css">
</head>



<body>
<div id="__next"><div class="search_id_box auth_common_box">
<div class="title"><span class="title_text"> 아이디 찾기</span></div><div class="auth_form_box">
<form name="f" action="find_id" method="post" onsubmit="return chekId();" id="f2">
<div class="phone_title">이름</div>
<div class="phone_area"><input type="text" name="name" class="id_input" placeholder="가입하신 이름" value=""/></div>
<div class="phone_title">휴대폰번호</div>
<div class="phone_area"><input type="tel" name="phone" class="phone_number" placeholder="휴대폰번호" value=""/></div><div class="password_certification_box">
<div class="password_certification_box"><button type="submit" id="f2">확인</button><a href="${pageContext.request.contextPath}/login"><button type="button" class="signup_btn">취소</button></a></div>
</div>
</form>
</div></div></div>


<script type="text/javascript">

	function chekId() {
		
		if(f.name.value=="") {
			alert("이름을 입력해 주세요.");
			f.id.focus();
			return false;
		}
		if(f.phone.value=="") {
			alert("전화번호를 입력해 주세요.");
			f.phone.focus();
			return false;
		}
		
		return true;
	}


</script>



<!-- 
<form method="post" name="CARD_FORM" action="https://cert.cardcert.co.kr/check" target="creditForm"><input type="hidden" name="certInfo" value=""/></form></div></div></div>
-->

</body></html>