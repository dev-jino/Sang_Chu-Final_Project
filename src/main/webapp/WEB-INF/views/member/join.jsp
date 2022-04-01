<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html><html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>상추마켓 : 회원가입</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/id.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/member.css">
</head>
<body>
<div class="logo_wrap_join">
	<a href="${pageContext.request.contextPath }/">
		<img src="${pageContext.request.contextPath }/img/site/title.png">
	</a>
</div>
<div id="__next"><div class="sign_box auth_common_box"> <!-- <div class="title"><span class="title_text">회원가입</span></div> -->
<div class="auth_form_box">


<form name="f" action="${pageContext.request.contextPath}/join" method="post" onsubmit="return userCreate();" id="f2">
<div class="email_title">아이디</div>
<div class="email_area"><input type="text"  class="msg" placeholder="아이디 입력" name="id" id="id"></div>
<div class="email_title">이름</div>
<div class="email_area"><input type="text"  class="msg" placeholder="이름 입력" name="name"></div>
<div class="email_title">닉네임</div>
<div class="email_area"><input type="text"  class="msg" placeholder="닉네임 입력" name="nicname"></div>
<div class="password_title">비밀번호</div>
<div class="password_box"><input type="password" class="msg"  placeholder="영문, 숫자, 특수문자 포함 6~15자" name="password"></div>
<div class="phone_title">휴대폰번호</div>
<div class="phone_area"><input type="tel" name="phone" class="msg" placeholder="숫자만 입력" ></div>
<div class="phone_title">계좌번호</div>
<div class="phone_area"><input type="tel" name="account" class="msg" placeholder="계좌번호를 입력해 주세요." /></div>

<div class="phone_area"><input type="hidden" name="payPw" class="msg" placeholder="출금 비밀번호를 설정해 주세요." value="123"/></div>


<br>
<div class="bottom login_btn"><button class="login_btn" type="submit" form="f2">회원가입</button></div>
<button type="button" class="signup_btn" onclick="location.href='${pageContext.request.contextPath}/login'">취소</button>
</form>
</div></div></div>
<script type="text/javascript">
var idCheck=false;

$("#id").focus();

function userCreate() {
	if(f.id.value == "" ) {
		alert("아이디를 입력하세요.");
		f.id.focus();
		return false;
 	}
	var idReg=/^[a-zA-Z0-9]\w{5,19}/g;
	if(!idReg.test(f.id.value)) { 
		alert("아이디를 형식에 맞게 입력해 주세요.");
		f.id.focus();
		
		return false;
	}
	
	if(!idCheck) { 
		alert("이미 사용중인 아이디를 입력하였습니다.");
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
	var passwdReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
	if(!passwdReg.test(f.password.value)) {
		alert("비밀번호를 형식에 맞게 입력해 주세요.");
		f.password.focus();
		
		return false;
	};
	
	
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
//	if ( f.payPw.value == "" ) {
//		alert("사용하실 계좌비밀번호를 입력하십시요.");
// 		f.payPw.focus();
// 		return false;
// 	}
 	
}


$("#id").keyup(function() {
	idCheck=false;
	
	var id=$("#id").val();
	if(id.length<6) return;
		
	$.ajax({
		type: "get",
		url: "id_check",
		data: "id="+id,
		async: false,
		dataType: "text",
		success: function(text) {
			if(text=="possible") {
				idCheck=true;
			}
		},
		error: function(xhr) {
			alert("에러코드 = "+xhr.status);
		}
	});
});

</script>

</body></html>
      
      
      
 