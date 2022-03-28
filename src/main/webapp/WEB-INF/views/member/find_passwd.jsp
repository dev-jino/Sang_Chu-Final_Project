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
<div class="title">
	<span class="title_text">비밀번호 변경</span>
</div>
<div class="auth_form_box">
<div class="email_title">아이디</div>
	<div class="email_area">
	<input type="text" value="" class="id_input" placeholder="아이디 입력" name="id"/>
</div>
<div class="phone_title">이름</div>
	<div class="phone_area">
	<input type="text" name="name" class="name_input" placeholder="가입하신 이름" value=""/>
</div>
<div class="phone_title">휴대폰번호</div>
	<div class="phone_area">
	<input type="tel" name="phone" class="phone_number" placeholder="휴대폰번호" value=""/>
</div>ㅎ
<div class="checkbox_area"><div></div></div>
<div class="password_certification_box"><button type="button">확인</button><a href="<%=request.getContextPath()%>/login"><button type="button" class="signup_btn">취소</button></a></div></div></div></div>
</body></html>


<!-- 2번째 페이지 -->
<!-- <form> -->
<%-- <input type="hidden" name="id" value="${id}"> --%>
<%-- <input type="hidden" name="name" value="${name}"> --%>
<%-- <input type="hidden" name="phone" value="${phone}"> --%>
<!-- <input type="password" name="password"> 변경할 비밀번호 -->
<!-- <input type="password" name="password"> 변경할 비밀번호 재확인 -->
<!-- </form> -->