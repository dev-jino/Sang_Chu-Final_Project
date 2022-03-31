<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

#success_btn {
	width: 600px;
}
</style>
<link rel="stylesheet" href="test.css">

</head>
<body>
	<div id="__next">
		<header class="">
			<div class="bar hide"></div>

		<section class="content">

			<div class="item_list_area">
				<div class="breadcrumbs">

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
																<div class="image_centerbox" style="right: 100px; bottom: 100px;">
																	<img src="<c:url value='/img/product/${productInfo.img }'/>">
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
									<li class="order_card last_order_card" style="position:relative; left: 16%;">
									<div class="order_card_left" style="float: none; width: 300px;"> 
										<div class="order_card_right" style="float:none; width: 600px; ">
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
														<label class="feature_option feature_option_checkbox" id="label">
															<div class="feature_option_checkbox_indicator" id="check" ></div>
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
													<form method="post">
														<input type="hidden" name="productIdx" value="${productInfo.idx }">
														<input type="hidden" name="memberId" value="${loginMember.id }">
														<input type="hidden" name="price" value="${productInfo.price }">
														<div><button type="submit" class="success_btn btn_disabled" id="success_btn">결제하기</button></div>
													</form>
												</div>
											</div>
										</div></li>

								</ul>
							</div>
							<div class="marketseller_notice" style="text-align: center;">상추슈퍼는 통신판매중개자로서 거래당사자가
								아니며, 판매자가 등록한 상품정보 및 거래에 대해 상추슈퍼는 일체 책임을 지지 않습니다.</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	
<script type="text/javascript">

document.getElementById("label").onclick= function (){
    document.getElementById("check").classList.toggle('checked');
    document.getElementById("success_btn").classList.toggle('btn_disabled');
}

</script>
</body>
</html>