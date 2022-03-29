<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
          @media all and (max-width: 800px) {
            img {
              width: 100%;
            }
          }
</style>
<link rel="stylesheet" href="test.css">

</head>
<body>
	<div id="__next">
		<header class="">
			<div class="bar hide"></div>

		<section class="content">
			<h1>헬로마켓 - 100% 비대면 안전 결제 중고거래 마켓</h1>
			<h2>헬로페이 결제 페이지</h2>
			<div class="item_list_area">
				<div class="breadcrumbs">
					<ul>
						<li><a href="/">HOME</a></li>
					</ul>
				</div>
				<div class="main_area">
					<div class="main_area_center">
						<div class="main">
							<div class="order_title_wrapper">
								<div class="title">주문서</div>
							</div>
							<div class="order_content_wrapper">
								<ul>
									<li class="order_card"><div class="title_box">주문자 정보</div>
										<ul class="order_member_info">
											<li><dl>
													<dt>이름</dt>
													<dd class="order_member_name">
														${loginMember.name }
													</dd>
												</dl></li>
											<li><dl>
													<dt>연락처</dt>
													<dd class="order_member_phone">
														${loginMember.phone }
													</dd>
												</dl></li>
										</ul></li>
									<li class="order_card"><div class="title_box">주문내용</div>
										<div class="card_cont deal_card_cont">
											<ul class="item_list">
												<li><div class="card_box card_box_list">
														<div
															class="image_wrapper image_wrapper_main_col_1 deal_image_wrapper">
															<div class="image_outside">
																<div class="image_centerbox">
																	<img class="thumbnail_img"
																		src="https://ccimg.hellomarket.com/images/2022/item/02/27/14/0207441_5439197_1.jpg?size=s4"
																		alt="(무료배송) 내구성 좋은 남성 다이얼 트레킹화 / 등산화 /트레킹화" />
																</div>
															</div>
														</div>
														<div class="cont cont_main_col_1">
															<div class="item_title title_main_col_1">${productInfo.title }</div>
															<div class="item_price pri_main_col_1">
																<fmt:formatNumber type="number" maxFractionDigits="3" value="${productInfo.price }"/> 원
															</div>
														</div>
													</div></li>
											</ul>
										</div></li>
									<li class="order_card last_order_card"><div
											class="order_card_left">
										<div class="order_card_right">
											<div class="title_box sub_last_title_box">최종결제금액</div>
											<div class="final_order_wrapper">
												<div class="final_order_price">
													<dl class="final_order_price_border_bottom final_order_price_padding">
														<dt>상품가격</dt>
														<dd><fmt:formatNumber type="number" maxFractionDigits="3" value="${productInfo.price }"/>
														</dd>
													</dl>
												</div>
												<div class="order_total_price">
													<div class="title">최종결제금액</div>
													<div class="price" id="orderTotalPrice">
														<fmt:formatNumber type="number" maxFractionDigits="3" value="${productInfo.price }"/> 원
													</div>
												</div>
												<div class="policy_area">
													<div class="info">
														<label class="feature_option feature_option_checkbox">
															<div class="feature_option_checkbox_indicator"></div>
														</label>
													</div>
													<div class="description">
														결제하기 클릭시
														<!-- -->
														<span class="txt-bl-12 txt_un">결제시 유의사항</span>
														<!-- -->
														및
														<!-- -->
														<span class="txt-bl-12 txt_un">반품환불정책</span>을 모두 이해하고 이에
														동의함을 의미합니다.
													</div>
												</div>
												<div class="success_btn_box">
													<div class="success_btn btn_disabled">결제하기</div>
												</div>
											</div>
										</div></li>

								</ul>
							</div>
							<div class="marketseller_notice">(주)헬로마켓은 통신판매중개자로서 거래당사자가
								아니며, 판매자가 등록한 상품정보 및 거래에 대해 (주)헬로마켓은 일체 책임을 지지 않습니다.</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>