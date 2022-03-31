<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>상추마켓 : 회원가입</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/id.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/member.css">
<style type="text/css">
.auth_common_box {
    width: 1200px;
}
.auth_common_box .title {
	width: 1200px;
}

</style>
</head>
<body>
	<div class="logo_wrap_join">
		<a href="${pageContext.request.contextPath }/">
			<img src="${pageContext.request.contextPath }/img/site/title.png">
		</a>
	</div>
	<div id="__next">
		<div class="sign_box auth_common_box"> 
			<div class="title">
				<span class="title_text">
					프로그램 실행에 예기치 못한 오류가 발생 되었거나 <br>
					비정상적인 방법으로 프로그램을 요청하여 오류가 발생 되었습니다.
				</span>
			</div>
			<div class="auth_form_box">
				<button type="button" class="signup_btn" onclick="location.href='${pageContext.request.contextPath}/'">홈으로 이동</button>
			</div>
		</div>
	</div>
</body>
</html>
      
      
      
 