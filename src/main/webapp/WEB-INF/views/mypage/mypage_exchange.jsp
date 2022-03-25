<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
											<li><a id="scrollMain" href="<%=request.getContextPath()%>/mypage_pay"><span>전자지갑 내역</span></a></li>
											<li><a class="active" href="<%=request.getContextPath()%>/mypage_exchange"><span>현금인출신청</span></a></li>
											<li><a href="<%=request.getContextPath()%>/mypage_pay_password"><span>결제 비밀번호 변경</span></a></li>
										</ul>
									</div>
								</div>
								<section class="left_main">
									<div class="wallet_wrapper">
										<div class="wallet_withdraw">
											<div class="withdraw_title">현금인출신청</div>
											<div class="withdraw_detail">
												<div class="withdraw_top">
													<div class="sub_title">입금받을 계좌</div>
													<div class="sub_btn">
														<a href="/m/withdrawal/account/form">
															<button type="button">다른계좌추가</button>
														</a>
													</div>
												</div>
												<div class="withdraw_bank_list">
													<div class="withdraw_bank_blank_text">등록된 계좌가 없습니다.</div>
												</div>
											</div>
											<div class="withdraw_detail withdraw_detail_margin">
												<div class="withdraw_top">
													<div class="sub_title">인출신청</div>
												</div>
												<div class="withdraw_info">
													<ul>
														<li><div class="info_title info_margin_title">인출가능</div>
															<div class="info_price">
																0
																<!-- -->
																원
																<div class="info_price_warning">
																	<span>최소 1천원 이상 신청가능</span>
																</div>
															</div></li>
													</ul>
												</div>
											</div>
											<div class="withdraw_footer">
												<div class="notice_title">인출신청한 금액은 다음 영업일까지 계좌로
													입금됩니다.</div>
												<div class="notice_sub_title">
													<span>- 평일 12시 이전 신청시 초스피드 당일 입금 <br /> - 주말/공휴일 제외
													</span>
												</div>
												<br><br>
												<div class="withdraw_btn">
													<button type="button">인출신청 완료</button>
												</div>
											</div>
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