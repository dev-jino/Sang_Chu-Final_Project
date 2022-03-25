<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
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
							<h2>회원프로필 영역</h2>
							<div class="my_profile_left">
								<div class="my_profile_info">
									<div class="my_profile_image">
										<img src="<%=request.getContextPath()%>/img/site/user.png">
									</div>
									<div class="my_profile_nick">n16587153</div>
									<div class="my_profile_shop_created">
									</div>
									<div class="my_profile_pro_review">
									</div>
								</div>
								<div class="my_profile_nav">
									<ul>
										<li><a href="<%=request.getContextPath()%>/mypage_main"><span>거래내역</span></a></li>
										<li><a href="<%=request.getContextPath()%>/mypage_qna"><span>내 Q&A</span></a></li>
										<li><a href="<%=request.getContextPath()%>/mypage_info_update"><span>회원정보수정</span></a></li>
									</ul>
								</div>
							</div>

							<section class="left_main" id="info_update_left_main"
								style="margin-left: 0;">

								<div class="profile_edit_wrapper">
									<div class="profile_edit_main">
										<ul>
											<li>
												<div>닉네임</div>
												<div>
													<input type="text" value="n16587159" class="input_box" />
												</div>
												<div>
													<button type="button" id="info_update_btn">변경</button>
												</div>
											</li>
											<li>
												<div>아이디</div>
												<div>
													<div class="profile_userId_value">2443825@naver.com</div>
												</div>
												<div>
													<button class="" type="button" id="info_update_btn">변경</button>
												</div>
											</li>
											<li>
												<div>본인인증</div>
												<div class="certificates_box">
													<div class="profile_userId_value">윤다혜</div>
												</div>
												<div class="certificates_box_btn">
													<button class="" type="button" id="info_update_btn">변경</button>
												</div>
												<form method="post" name="CARD_FORM"
													action="https://cert.cardcert.co.kr/check"
													target="creditForm">
													<input type="hidden" name="certInfo" value="" />
												</form>
											</li>
											<li>
												<div>휴대폰</div>
												<div>
													<div>
														<div class="phone_notice active">01038251118</div>
													</div>
												</div>
												<div>
													<button class="" type="button" id="info_update_btn">변경</button>
												</div>
											</li>
											<li class="profile_password_area profile_password_area_first"><div>비밀번호</div>
												<div class="profile_userId_value">****************</div>
												<div>
													<button class="" type="button" id="info_update_btn">변경</button>
												</div></li>
										</ul>
										<br>
										<br>
										<div class="profile_edit_bye">
											<span><a
												href="<%=request.getContextPath()%>/delete_member">회원탈퇴</a>></span>
										</div>
										<br>
										<br>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>