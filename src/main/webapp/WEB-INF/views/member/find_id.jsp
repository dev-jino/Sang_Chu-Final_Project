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
<form>
<div class="phone_title">이름</div>
<div class="phone_area"><input type="text" name="id" class="id_input" placeholder="가입하신 이름" value=""/></div>
<div class="phone_title">휴대폰번호</div>
<div class="phone_area"><input type="tel" name="phoneNumber" class="phone_number" placeholder="휴대폰번호" value=""/></div><div class="password_certification_box">
<div class="password_certification_box"><button type="button">확인</button><a href="<%=request.getContextPath()%>/login"><button type="button" class="signup_btn">취소</button></a></div>
</div>
</form>
</div></div></div>

<!-- 
<form method="post" name="CARD_FORM" action="https://cert.cardcert.co.kr/check" target="creditForm"><input type="hidden" name="certInfo" value=""/></form></div></div></div>
-->

</body></html>