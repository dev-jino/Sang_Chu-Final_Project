<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html><html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>상추마켓 : 비밀번호 재설정</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/id.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/member.css">
</head>

<body><div id="__next"><div class="password_search_box auth_common_box">
<div class="title"><span class="title_text">비밀번호 재설정</span></div>
<form name="g" action="${pageContext.request.contextPath}/find_password" method="post" onsubmit="return chgPasswd();" id="f3">

<div class="auth_form_box"><div class="email_title">아이디</div><div class="email_area"><input type="text" value="" class="id_input" placeholder="아이디 입력" name="id"/></div>
<div class="phone_title">이름</div>
<div class="phone_area"><input type="text" name="name" class="name_input" placeholder="가입하신 이름" value=""/></div>
<div class="phone_title">휴대폰번호</div>
<div class="phone_area"><input type="tel" name="phone" class="phone_number" placeholder="휴대폰번호" value=""/></div>
<div class="phone_title">변경할 비밀번호</div>
<div class="phone_area"><input type="password" name="password" class="password_input" placeholder="영문, 숫자, 특수문자 포함 6~15자" value=""/></div>

<div class="checkbox_area"><div></div></div>
<div class="password_certification_box"><button type="submit">확인</button><a href="${pageContext.request.contextPath}/login"><button type="button" class="signup_btn">취소</button></a></div>

</form>


<script type="text/javascript">
function chgPasswd() {
	if(g.id.value=="") {
		alert("아이디를 입력해 주세요.");
		g.id.focus();
		return false;
	}
	
	var idReg=/^[a-zA-Z]\w{5,19}/g;
	if(!idReg.test(g.id.value)) { 
		alert("아이디를 형식에 맞게 입력해 주세요.");
		g.id.focus();
		
		return false;
	}
	
	if(g.name.value=="") {
		alert("이름을 입력해 주세요.");
		g.name.focus();
		return false;
	}
	if(g.phone.value=="") {
		alert("전화번호를 입력해 주세요.");
		g.phone.focus();
		return false;
	}
	if(g.password.value=="") {
		alert("변경하실 비밀번호를 입력해 주세요.");
		g.password.focus();
		return false;
	}
	
	var passwdReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
	if(!passwdReg.test(g.password.value)) {
		alert("비밀번호를 형식에 맞게 입력해 주세요.");
		g.password.focus();
		
		return false;
	}
	
	alert("변경하시겠습니까?");
	return true;
}

</script>





</body></html>