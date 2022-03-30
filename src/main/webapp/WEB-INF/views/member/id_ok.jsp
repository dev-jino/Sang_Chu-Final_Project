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
<form name="f" action="login" method="get" id="f2">
<br>
<br>
<div class="phone_title" style="font-size: 20px; text-align: center;">고객님의 아이디는 ${member.id} 입니다.

 <div class="phone_title"></div>
 <br>
 <br>
 
 
 
<div class="password_certification_box"><button onclick="location.href='${pageContext.request.contextPath}/login'" id="f2">확인</button><a href="${pageContext.request.contextPath}/login"><button type="button" class="signup_btn">취소</button></a></div>
</div>
</form>
</div></div></div>

</body></html>