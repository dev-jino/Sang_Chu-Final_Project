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
										<c:url value=""/>
											<li><a class="active" id="scrollMain" href="<c:url value="/mypage_pay"/>"><span>전자지갑 내역</span></a></li>
											<li><a href="<c:url value="/mypage_exchange"/>"><span>상추 환전</span></a></li>
											<li><a href="<c:url value="/mypage_pay_password"/>"><span>결제 비밀번호 변경</span></a></li>
										</ul>
									</div>
								</div>
								<section class="left_main">
									<div class="wallet_wrapper wallet_wrapper_margin">
										<div class="wallet_main">
											<div class="wallet_detail">
												<div class="wallet_total">
													<div class="title">보유 상추</div>
													<div class="price" id="mypage_pay_price">
														<span><fmt:formatNumber type="number" maxFractionDigits="3" value="${member.coin }"/> 
														</span>
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
</body>
</html>