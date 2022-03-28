<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html><html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>상추마켓 : 회원가입</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/id.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/member.css">





</head>
<body>
<div class="logo_wrap_join">
	<a href="<%=request.getContextPath() %>/index.jsp">
		<img src="<%=request.getContextPath()%>/img/site/title.png">
	</a>
</div>
<div id="__next"><div class="sign_box auth_common_box"> <!-- <div class="title"><span class="title_text">회원가입</span></div> -->
<div class="auth_form_box">


<form name="f" action="${pageContext.request.contextPath}/join" method="post" onsubmit="return userCreate();" id="f2">
<div class="email_title">아이디</div>
<div class="email_area"><input type="text"  class="email_sign" placeholder="아이디 입력" name="id"/></div>
<div class="email_title">이름</div>
<div class="email_area"><input type="text"  class="email_sign" placeholder="이름 입력" name="name"/></div>
<div class="email_title">닉네임</div>
<div class="email_area"><input type="text"  class="email_sign" placeholder="닉네임 입력" name="nicname"/></div>
<div class="password_title">비밀번호</div>
<div class="password_box"><input type="password" class="password_input"  placeholder="영문, 숫자, 특수문자 포함 6~15자" name="password"/>
<div class="password_icon"><img src="https://ccimage.hellomarket.com/web/2018/auth/ico_join_pw_off.png" alt="비밀번호 아이콘" width="20" height="16"/></div></div>
<div class="phone_title">휴대폰번호</div>
<div class="phone_area"><input type="tel" name="phone" class="phone_number" placeholder="숫자만 입력" /></div>
<div class="phone_title">계좌번호</div>
<div class="phone_area"><input type="tel" name="account" class="phone_number" placeholder="계좌번호를 입력해 주세요." /></div>
<div class="phone_title">결제 비밀번호</div>
<div class="phone_area"><input type="password" name="payPw" class="password_input" placeholder="출금 비밀번호를 설정해 주세요." /></div>

<br>
<div class="bottom login_btn"><button class="login_btn" type="submit" form="f2">회원가입</button></div>
<button type="button" class="signup_btn" onclick="location.href='${pageContext.request.contextPath}/login'">취소</button>
</form>
</div></div></div>
<script type="text/javascript">
function userCreate() {
	if(f.id.value == "" ) {
		alert("아이디를 입력하세요.");
		f.id.focus();
		return false;
 	}
	if ( f.name.value == "" ) {
		alert("이름을 입력하십시요.");
		f.name.focus();
		return false;
	}
	if ( f.nicname.value == "" ) {
		alert("닉네임을 입력하십시요.");
		f.nicname.focus();
		return false;
	}
	if ( f.password.value == "" ) {
		alert("비밀번호를 입력하십시요.");
		f.password.focus();
		return false;
	}
	if ( f.phone.value == "" ) {
		alert("번호를 입력하십시요.");
		f.phone.focus();
		return false;
	}
	if ( f.account.value == "" ) {
		alert("계좌번호를 입력하십시요.");
		f.account.focus();
		return false;
	}
	if ( f.payPw.value == "" ) {
		alert("사용하실 계좌비밀번호를 입력하십시요.");
		f.payPw.focus();
		return false;
	}
// 	f.method = "post";
// 	f.action = "<c:url value='/login'/>";
// 	f.submit(); 
	
	return true;
}
</script>

</body></html>
      
      
      
 