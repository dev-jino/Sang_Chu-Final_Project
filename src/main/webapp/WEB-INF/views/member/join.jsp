<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html><html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>상추마켓 : 회원가입</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/id.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/member.css">

<script type="text/javascript">
function userCreate() {
	if(f.id.value == "" ) {
		alert("아이디를 입력하세요.");
		f.id.focus();
		return;
	}
	f.cation = "<c:url value="/member/join"/>";
	f.submit();
	
}
</script>



</head>
<body>
<div class="logo_wrap_join">
	<a href="<%=request.getContextPath() %>/index.jsp">
		<img src="<%=request.getContextPath()%>/img/site/title.png">
	</a>
</div>
<div id="__next"><div class="sign_box auth_common_box"> <!-- <div class="title"><span class="title_text">회원가입</span></div> -->
<div class="auth_form_box">


<form name="f" action="join" method="post">
<div class="email_title">아이디</div>
<div class="email_area"><input type="text" value="${member.id}" class="email_sign" placeholder="아이디 입력" name="id"/></div>
<div class="email_title">이름</div>
<div class="email_area"><input type="text" value="${member.name}" class="email_sign" placeholder="이름 입력" name="name"/></div>
<div class="email_title">닉네임</div>
<div class="email_area"><input type="text" value="${member.nicname}" class="email_sign" placeholder="닉네임 입력" name="nicname"/></div>
<div class="password_title">비밀번호</div>
<div class="password_box"><input type="password" class="password_input" value="${member.password}" placeholder="영문, 숫자, 특수문자 포함 6~15자" name="password"/>
<div class="password_icon"><img src="https://ccimage.hellomarket.com/web/2018/auth/ico_join_pw_off.png" alt="비밀번호 아이콘" width="20" height="16"/></div></div>
<div class="phone_title">휴대폰번호</div>
<div class="phone_area"><input type="tel" name="phone" class="phone_number" placeholder="숫자만 입력" value="${member.phone}"/></div>
<div class="phone_title">계좌번호</div>
<div class="phone_area"><input type="tel" name="account" class="phone_number" placeholder="계좌번호를 입력해 주세요." value="${member.account}"/></div>
<div class="phone_title">결제 비밀번호</div>
<div class="phone_area"><input type="password" name="payPw" class="password_input" placeholder="출금 비밀번호를 설정해 주세요." value="${member.payPw}"/></div>

<!-- 계좌비밀번호 -->
<br>
<div class="bottom login_btn"><button class="login_btn" type="submit">회원가입</button></div>
<a href="<%=request.getContextPath()%>/"><button type="button" class="signup_btn">취소</button></a>
</form>

</div></div></div>
</body></html>
      
      
      
 