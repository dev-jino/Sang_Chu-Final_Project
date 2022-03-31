<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
										<li><a id="scrollMain" href="<c:url value='/mypage_pay'/>"><span>전자지갑 내역</span></a></li>
										<li><a class="active" href="<c:url value='/mypage_exchange'/>"><span>상추 · 현금 환전</span></a></li>
										
									</ul>
								</div>
							</div>
								<section class="left_main">
									<div class="wallet_wrapper">
										<div class="wallet_withdraw">
										<br>
											<div class="withdraw_title">환전 신청</div>
											<div class="withdraw_detail">
												<div class="withdraw_top">
													<div class="sub_title">상추 충전</div>
													<div class="sub_btn">
													</div>
												</div>
											</div>
											<div class="withdraw_footer">
												<form method="post" onsubmit="message2()">												
												<div class=notice_title> 충전할 금액 :&nbsp;&nbsp;
													<input type="hidden" name="formStatus" value="상추충전">
													<input type="hidden" name="id" value="${id }">
													<input type="number" name="coin" value="0" min="0">
												</div>
												<div class="notice_sub_title"><span class="message"></span></div>
												<br>
												<div class="withdraw_btn">
													<button type="submit">충전하기</button>
												</div>
												</form>
											</div>
											
											<br><br><br>
											
											<div class="withdraw_detail withdraw_detail_margin">
												<div class="withdraw_top">
													<div class="sub_title">환전 신청</div>
												</div>
												<div class="withdraw_info">
													<ul>
														<li><div class="info_title info_margin_title">인출가능</div>
															<div class="info_price">
																<fmt:formatNumber type="number" maxFractionDigits="3" value="${coin }"/> 상추
																<div class="info_price_warning">
																	<span>최소 1,000 상추 이상 신청가능</span>
																</div>
															</div>
														</li>
													</ul>
												</div>
											</div>
											<div class="withdraw_footer">
												<form method="post" onsubmit="message1()">
													<div class=notice_title> 환전할 금액 :&nbsp;&nbsp;
													<input type="hidden" name="formStatus" value="현금환전">
													<input type="hidden" name="memberId" value="${id }">
													<input type="number" name="exCoin" value="0" max="${coin }" min="1000">
													</div>
													<div class="notice_sub_title"><span class="message"></span></div>
												<br>
												<div class="withdraw_btn">
													<button type="submit">환전 신청</button>
												</div>
												</form>
												<br><br><br>
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
	
<script type="text/javascript">
// 	function exClick() {
// 		var inputCoin = document.getElementById("coin").val()
// 		if(inputCoin > ${coin}) {
// 			alert("보유하고 있는 상추보다 많은 숫자를 입력할 수 없습니다.");
// 		}	
// 	})

function message1() {
	alert("환전 신청되었습니다.");
}

function message2() {
	alert("상추가 충전되었습니다.");
}
</script>
</body>
</html>