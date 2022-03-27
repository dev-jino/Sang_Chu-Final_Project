<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#paybutton {
	background-color: green;
	color: white;
	border-radius: 5px;
	width: 80px;
	height: 30px;
}

.password_title {
	font-size: 15px;
}
</style>
</head>
<body>
	<div id="__next">
		<section class="content">
			<div class="item_list_area">
				<h1>회원프로필</h1>
				<div class="breadcrumbs" id="breadcrumbs">
				</div>
				<div class="main_area">
					<div class="main_area_center">
						<div class="main">
							<div class="left">
								<div class="left_nav_type2">
									<div class="left_nav_type2_title">전자지갑 · 결제관리</div>
									<ul class="left_nav_menu">
									<c:url value=""/>
										<li><a id="scrollMain"
											href="<c:url value="/mypage_pay"/>"><span>전자지갑
													내역</span></a></li>
										<li><a
											href="<c:url value="/mypage_exchange"/>"><span>현금인출신청</span></a></li>
										<li><a class="active"
											href="<c:url value="/mypage_pay_password"/>"><span>결제
													비밀번호 변경</span></a></li>
									</ul>
								</div>
							</div>
							<section class="left_main">
								<div class="wallet_wrapper wallet_wrapper_margin">
									<div class="wallet_main">
										<div class="wallet_detail">
											<div class="wallet_total">
												<div class="title">결제 비밀번호 변경</div>
												<hr><br>
												<div class="price" id="mypage_pay_price">
													<form name="pawPwForm" method="post">
														<input type="hidden" name="id" value="${member.id }">
														<div class="password_title">변경할 결제 비밀번호</div>
														<div class="password_box">
															<input type="password" class="password_input" value=""
																placeholder="숫자 6자리를 입력하세요" name="payPw" />
															<div class="password_icon">
															</div>
														</div>
														<br>
														<div class="password_title">변경할 결제 비밀번호 확인</div>
														<div class="password_box">
															<input type="password" class="password_input" value=""
																placeholder="비밀번호를 동일하게 입력해 주세요." name="payPwCheck" />
														</div>
														<br>
														<div class="bottom login_btn">
															<button class="payPassword_btn" type="submit"
																id="paybutton" onclick="submitCheck()">확인</button>
															<a><button type="button" class="signup_btn"
																	id="paybutton" onclick="">취소</button></a>
														</div>
													</form>
												</div>
											</div>
										</div>
										<div class="wallet_point_no_detail"></div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	
	<script type="text/javascript">
	function submitCheck() {
		if(payPwForm.payPw.value!=payPwForm.payPwCheck.value) {
			alert("비밀번호가 맞는지 다시 한번 확인해주세요.");
			payPwForm.payPw.focus();
			return;
		}
	}
	
		
	</script>

</body>
</html>