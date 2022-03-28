<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html><html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>상추마켓 : 로그인</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/id.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/member.css">
</head>
<body>
<div class="logo_wrap">
	<a href="<%=request.getContextPath() %>/">
		<img src="<%=request.getContextPath()%>/img/site/title.png">
	</a>
</div>
<div id="__next">
<div class="login_box auth_common_box">
<div class="auth_form_box">

<c:choose>
	<c:when test="${empty(loginMember)}">

<form name="f" action="${pageContext.request.contextPath}/login" method="post">
<div class="login_id_input_area"><input type="text" value="${member.id}" class="id_input" placeholder="아이디" name="id"/></div>
<div class="login_password_input_area password_box"><input type="password" class="password_input" value="" placeholder="비밀번호" name="password"/><div class="password_icon"><img src="https://ccimage.hellomarket.com/web/2018/auth/ico_join_pw_off.png" alt="비밀번호 아이콘" width="20" height="16"/></div></div>

<!-- <div class="login_checkbox_area"><label class="feature_option feature_option_checkbox login_id_option">아이디 저장<div class="feature_option_checkbox_indicator"></div></label><label class="feature_option feature_option_checkbox">로그인 상태유지<div class="feature_option_checkbox_indicator"></div></label></div>  -->
<div class="checkbox_area"><div></div></div>
<button type="submit" class="signup_btn">로그인</button>
<div class="login_find_area pc_login_area"><span class="re_password"><a class="re_password_btn" onclick="location.href='${pageContext.request.contextPath}/find_id'">아이디찾기</a></span>
<span class="gap">|</span>
<span class="re_password"><a class="re_password_btn" onclick="location.href='${pageContext.request.contextPath}/find_password'">비밀번호찾기</a></span></div>
</form>
	</c:when>
</c:choose>

<div class="sns_login_area pc_login_area"><hr class="line" color="#e8ebed"/></div></div>
<div class="sign_text_url">
<span class="sign_span">홈페이지로 이동할까요?</span>
<span>
<button class="sign_text_btn" onclick="location.href='${pageContext.request.contextPath}/'">상추슈퍼</button></span></div>
<div class="sign_text_url">
<span class="sign_span">처음이신가요?</span>
<span>
<button class="sign_text_btn" onclick="location.href='${pageContext.request.contextPath}/join'">회원가입</button></span></div></div></div>

</body></html>