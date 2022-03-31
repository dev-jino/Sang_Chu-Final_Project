<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style type="text/css">

.item_info .wish_img_box img {
	width: 30px;
    height: 30px;
    vertical-align: top;
    padding-left: 10px;
    padding-top: 12px;
}

</style>


<main class="content">
	<div class="item_list_area">
		<div class="item_list_area_box">
			<div class="breadcrumbs">
				<ul>
					<li><a href="../">HOME</a></li>
					<li><a href="../search2b8d.html?category=HCA0000">&gt; <!-- -->가구/가전
					</a></li>
					<li><a href="../searcha502.html?category=HCA0002">&gt; <!-- -->가구
					</a></li>
				</ul>
			</div>
			<div class="main_area">
				<div class="main_area_center">
					<section class="main">
						<div class="detail_box">
							<article class="detail_box_top">
								<section class="detail_top_area">
									<div class="photo_area">
										<div class="large_img">
											<div class="swiper-container">
												<div class="swiper-wrapper">
													<div class="swiper-slide thumbnail_wrapper swiper-slide-active">
														<div class="badeagle">
															<div class="centered">
																<img class="view thumbnail_img" id = "imgimg1" style="height:460px"
																	<c:if test="${productInfo.img == null }">src="img/site/cam.png"</c:if>
																	<c:if test="${productInfo.img != null }">src="img/product/${productInfo.img}"</c:if>
																	data-src="" />
																<img class="view thumbnail_img" id = "imgimg2" style="height:460px"
																	<c:if test="${productInfo.img1 == null }">src="img/site/cam.png"</c:if>
																	<c:if test="${productInfo.img1 != null }">src="img/product/${productInfo.img1}"</c:if>
																	data-src="" />
																<img class="view thumbnail_img" id = "imgimg3" style="height:460px"
																	<c:if test="${productInfo.img2 == null }">src="img/site/cam.png"</c:if>
																	<c:if test="${productInfo.img2 != null }">src="img/product/${productInfo.img2}"</c:if>
																	data-src="" />
																<img class="view thumbnail_img" id = "imgimg4" style="height:460px"
																	<c:if test="${productInfo.img3 == null }">src="img/site/cam.png"</c:if>
																	<c:if test="${productInfo.img3 != null }">src="img/product/${productInfo.img3}"</c:if>
																	data-src="" />
																<img class="view thumbnail_img" id = "imgimg5" style="height:460px"
																	<c:if test="${productInfo.img4 == null }">src="img/site/cam.png"</c:if>
																	<c:if test="${productInfo.img4 != null }">src="img/product/${productInfo.img4}"</c:if>
																	data-src="" />
																<img class="view thumbnail_img" id = "imgimg6" style="height:460px"
																	<c:if test="${productInfo.img5 == null }">src="img/site/cam.png"</c:if>
																	<c:if test="${productInfo.img5 != null }">src="img/product/${productInfo.img5}"</c:if>
																	data-src="" />
																
															</div>
														</div>
													</div>	
												</div>
												<div class="swiper-pagination swiper-pagination-white auto_item_image_pagination"></div>
												<div class="swiper-button-next auto_swiper_next" id = "next1">
													<svg xmlns="https://www.w3.org/2000/svg" id = "next1"
														viewBox="0 0 27 44">
														<path d="M27,22L27,22L5,44l-2.1-2.1L22.8,22L2.9,2.1L5,0L27,22L27,22z" ></path></svg>
												</div>
												<div class="swiper-button-prev auto_swiper_prev" id ="prev1">
													<svg xmlns="https://www.w3.org/2000/svg" id = "prev1"
														viewBox="0 0 27 44">
														<path d="M0,22L22,0l2.1,2.1L4.2,22l19.9,19.9L22,44L0,22L0,22L0,22z"></path></svg>
												</div>
											</div>
										</div>
										<div class="als_image_viewport">
											<div class="als_prev"></div>
											<div class="als_container">
												<div class="als_item als_normal_item" >
													<a>
														<img alt="작은 썸네일 이미지" class="thumbnail_img" style="width: 57px;" id="thum_1"
														<c:if test="${productInfo.img == null }">src="img/site/cam.png"</c:if>
														<c:if test="${productInfo.img != null }">src="img/product/${productInfo.img}"</c:if>>
													</a>
												</div>
												<div class="als_item als_normal_item" >
													<a>
														<img alt="작은 썸네일 이미지" class="thumbnail_img" style="width: 57px;" id="thum_2"
														<c:if test="${productInfo.img1 == null }">src="img/site/cam.png"</c:if>
														<c:if test="${productInfo.img1 != null }">src="img/product/${productInfo.img1}"</c:if>>
													</a>
												</div>
												<div class="als_item als_normal_item" >
													<a>
														<img alt="작은 썸네일 이미지" class="thumbnail_img" style="width: 57px;" id="thum_3"
														<c:if test="${productInfo.img2 == null }">src="img/site/cam.png"</c:if>
														<c:if test="${productInfo.img2 != null }">src="img/product/${productInfo.img2}"</c:if>>
													</a>
												</div>
												<div class="als_item als_normal_item" >
													<a>
														<img alt="작은 썸네일 이미지" class="thumbnail_img" style="width: 57px;" id="thum_4"
														<c:if test="${productInfo.img3 == null }">src="img/site/cam.png"</c:if>
														<c:if test="${productInfo.img3 != null }">src="img/product/${productInfo.img3}"</c:if>>
													</a>
												</div>
												<div class="als_item als_normal_item" >
													<a>
														<img alt="작은 썸네일 이미지" class="thumbnail_img" style="width: 57px;" id="thum_5"
														<c:if test="${productInfo.img4 == null }">src="img/site/cam.png"</c:if>
														<c:if test="${productInfo.img4 != null }">src="img/product/${productInfo.img4}"</c:if>>
													</a>
												</div>
												<div class="als_item als_normal_item" >
													<a>
														<img alt="작은 썸네일 이미지" class="thumbnail_img" style="width: 57px;" id="thum_6"
														<c:if test="${productInfo.img5 == null }">src="img/site/cam.png"</c:if>
														<c:if test="${productInfo.img5 != null }">src="img/product/${productInfo.img5}"</c:if>>
													</a>
												</div>
											</div>
											<div class="als_next"></div>
										</div>
									</div>
									<div class="item_info">
										<div class="item_title_area">
											<span class="item_tag"><span class="used_type_tag">중고</span>
											<div class="registration_date_box">
													${productInfo.regDate }
													<!-- -->
													·
													</span>
													<c:if test="${loginMember.id == productInfo.memberId }">
													<form id="productDeleteForm_${productInfo.idx }" method="post">
															<input type="hidden" name="idx" value="${productInfo.idx }">
															<input type="hidden" name="pStatus" value="9">
													</form>
													<button class="write_btn" type="submit" form="productDeleteForm_${productInfo.idx }">삭제하기</button>
													</c:if>
												</div>
												</span>
										</div>
										<h1 class="H1-sc-1jnmmbn-0 lUWLJ">
											<span class="item_title">title</span>
										</h1>
										<div class="item_price_box item_price_box_bottom">
											<div class="item_price_box_bottom_low">
												<div class="item_price item_price_bottom">
													${productInfo.title }
													<!--20,000 원-->
												</div>
											</div>
											<div class="description_hellopay  only_hellopay_area">
												<table>
													<tbody>
														<tr class="first">
															<td class="title">거래방법</td>
															<td class="description" style="padding-bottom: 3px">상추페이</td>
														</tr>
														<tr>
															<td class="title">가격</td>
															<td class="description"><fmt:formatNumber value="${productInfo.price }" pattern="#,###"/>원</td>
														</tr>
													</tbody>
												</table>




												<div class="notice_text_box big">
													<span><div class="highlight_method">
															<span class="highlight_notice">직거래 유도 주의안내</span>
														</div>
														<div class="notice_text">
															상추마켓은 상추페이 안전결제 거래만 가능합니다. <br />계좌입금 및 직거래를 유도하는 경우
															상추마켓으로 신고 바랍니다. <br />상추페이 외 거래는 사기피해 보호를 받을 수 없습니다.
														</div></span>
												</div>
												<div style="margin-top: 0px"></div>
											</div>
											<div class="item_sns item_detail_sns">
												<div class="item_hello_box">
													<div class="item_hello_box_talk">
													<c:if test="${favoriteTf == 0 }">
														<div class="wish_img_box" id="wish_img_box">
															<form name="favoriteImg" method="post" action="<c:url value="/product_detail"/>">
															<input type="hidden" name="idx" value="${productInfo.idx }" >
															<input type="hidden" name="productIdx" value="${productInfo.idx }" >
															<input type="hidden" name="memberId" value="${loginMember.id}">
															<input type="hidden" name="pStatus" value="8">
															<img src="<%=request.getContextPath()%>/img/site/heart.png"
																alt="찜하기이미지" class="wish_icon" id="wish_icon" onclick="favoriteSubmit()"/>
															</form>
														</div>
													</c:if>
													<c:if test="${favoriteTf == 1 }">
														<div class="wish_img_box" id="wish_img_box">
															<form name="favoriteImg" method="post" action="<c:url value="/product_detail"/>">
															<input type="hidden" name="idx" value="${productInfo.idx }" >
															<input type="hidden" name="productIdx" value="${productInfo.idx }" >
															<input type="hidden" name="memberId" value="${loginMember.id}">
															<input type="hidden" name="pStatus" value="7">
															<img src="<%=request.getContextPath()%>/img/site/filled_heart.png"
																alt="찜하기이미지" class="wish_icon" id="wish_icon" onclick="favoriteSubmit()"/>
															</form>
														</div>
													</c:if>

														<!-- <button type="button" class="hello_talk_btn canpayment_hello_talk_btn">충전하기</button></div> -->

														<div class="item_hello_box_pay item_hello_box_chat_pay">
															<button type="button" class="hello_pay_btn" onclick="location.href = '${pageContext.request.contextPath}/order_detail?idx=${productInfo.idx }'">구매 신청하기</button>
														</div>
													</div>
												</div>
											</div>
										</div>
								</section>
								<section>
									<div class="detail_box_bottom detail_box_item"
										style="padding-top: 0">
										<div class="detail_comment">
											<section class="description">
												<div class="description_title">상세설명</div>
												<div class="description_text">
													${productInfo.content }
												</div>
											</section>
											<section class="detail_bottom_box"></section>


											<section class="item_buy_area">
												<div class="item_wish_box">
													<div class="item_wish_box_border">
														<button type="button" class="image_wish_box_btn">
															<img src="<%=request.getContextPath()%>/img/site/ico_zzim.png"
																alt="찜하기이미지" class="wish_icon" />
														</button>
													</div>
												</div>
												<div class="item_talk_box">
													<div class="item_talk">충전하기</div>
												</div>
												<div class="item_buy_box">
													<button type="button" class="item_buy" onclick="location.href = '<c:url value='/order_detail'/>'">구매 신청하기</button>
												</div>
											</section>

											<section class="comment_title">
												<span class="comment_title_comment">댓글</span><span>(<!-- -->${commentCount}<!-- -->)
												</span>
											</section>


											<section class="input_custorm">
												<div class="cm_in_box">
												
													<form id="commentForm" method="post" onsubmit="return checkComment();">
													<input type="hidden" name="memberId" value="${loginMember.id }">
													<input type="hidden" name="productIdx" value="${productInfo.idx }">
													<input type="hidden" name="status" value="1">
<%-- 													<input type="hidden" name="refGroup" value="${comment.idx }"> --%>
													<textarea placeholder="댓글을 입력해주세요." class="input_txt" name="content" id="commentContent"></textarea>
													</form>
													
												</div>
												<div class="cms_btn_box">
													<button class="comment_send_btn" type="submit" form="commentForm">댓글등록</button>
												</div>
											</section>
											
											<section class="comment_list_box">
												<ul class="comment_list">
												
													<li class="comment_al_list">
													<c:forEach var="comment" items="${commentList }">

														<c:if test="${comment.refLevel == 0 }">
														<div class="cmt_dtl">
															<a href="">
																<img src="<c:url value="/img/site/user.png"/>" class="cmt_img">
															</a>
															<div class="cmt_info">
																<div class="cmt_top">
																	<div class="nick">
																		<a class="link" href="">${comment.memberId }</a>
																	</div>
																	<div class="date">${comment.regDate }</div>
																</div>
																<div class="cmt_content">
																<c:if test="${comment.status != 9 }">${comment.content }</c:if>
																<c:if test="${comment.status == 9 }">삭제된 댓글입니다.</c:if>
																</div>
																<div class="cmt_bottom" id="cmt_button_${comment.comIdx }" onclick="openCmt('${comment.comIdx }')">답글</div>
																<c:if test="${loginMember.id == comment.memberId }">
																<div class="cmt_bottom">&nbsp;|&nbsp;</div>
																<form id="commentDeleteForm_${comment.comIdx }" method="post">
																<input type="hidden" name="comIdx" value="${comment.comIdx }">
																<input type="hidden" name="status" value="9">
																</form>
																<button class="cmt_bottom" type="submit" form="commentDeleteForm_${comment.comIdx }">삭제</button>
																<div class="cmt_bottom">&nbsp;|&nbsp;</div>
																<div class="cmt_bottom" onclick="modifyCmt('${comment.comIdx }')">수정</div>
																</c:if>
															</div>
														</div>
														<!-- -------------------------------------------------------------------------------------- -->
														<div class="answer_area" style="display: none" id="modify_comment_${comment.comIdx }">
															<form id="commentModifyForm_${comment.comIdx }" method="post" onsubmit="return checkModifyComment('${comment.comIdx }');">
																<input type="hidden" name="comIdx" value="${comment.comIdx }">
																<textarea placeholder="수정할 댓글을 입력해주세요." name="content" id="modify_${comment.comIdx }"></textarea>
																<input type="hidden" name="status" value="2">
																<input type="hidden" name="memberId" value="${loginMember.id }">
															</form>
															<button class="cmt_bottom" type="submit" form="commentModifyForm_${comment.comIdx }">댓글수정</button>
														</div>
														<!-- -------------------------------------------------------------------------------------- -->
														<div class="answer_area" style="display: none" id="cmt_${comment.comIdx }">
															<form id="commentForm2_${comment.comIdx }" method="post" onsubmit="return checkComment2('${comment.comIdx }');">
															<input type="hidden" name="memberId" value="${loginMember.id }">
															<input type="hidden" name="productIdx" value="${productInfo.idx }">
															<input type="hidden" name="refGroup" value="${comment.comIdx }">
															<input type="hidden" name="refStep" value="${comment.refStep+1 }">
															<input type="hidden" name="refLevel" value="${comment.refLevel+1 }">
															<input type="hidden" name="status" value="1">
															
															<textarea placeholder="답글을 입력해주세요." name="content" id="commentContent2_${comment.comIdx }"></textarea>
															</form>
															<button class="cmt_bottom" type="submit" form="commentForm2_${comment.comIdx }">댓글입력</button>
														</div>
														</c:if>
														<c:if test="${comment.refLevel != 0 }">
															<ul class="cmt_sub_list">
															<li class="comment_al_list">
																<div class="cmt_dtl">
																	<img src="<c:url value="/img/site/reply-all.png"/>" alt="대댓글 이미지" class="cmt_deth_ico">
																		<a href="">
																			<img src="<c:url value="/img/site/user.png"/>" alt="회원 이미지" class="cmt_img">
																		</a>
																		<div class="cmt_info">
																			<div class="cmt_top">
																				<div class="nick">
																					<a class="link" href="">${comment.memberId }</a>
																				</div>
																				<div class="date">${comment.regDate }</div>
																			</div>
																			<div class="cmt_content">
																			<c:if test="${comment.status != 9 }">${comment.content }</c:if>
																			<c:if test="${comment.status == 9 }">삭제된 댓글입니다.</c:if>
																			</div>
																			<c:if test="${loginMember.id == comment.memberId }">
																			<form id="commentDeleteForm_${comment.comIdx }" method="post">
																			<input type="hidden" name="comIdx" value="${comment.comIdx }">
																			<input type="hidden" name="status" value="9">
																			</form>
																			<button class="cmt_bottom" type="submit" form="commentDeleteForm_${comment.comIdx }">삭제</button>
																			<div class="cmt_bottom">&nbsp;|&nbsp;</div>
																			<div class="cmt_bottom" onclick="modifyCmt('${comment.comIdx }')">수정</div>
																			</c:if>
																		</div>
																</div>
																<!-- -------------------------------------------------------------------------------------- -->
																<div class="answer_area" style="display: none" id="modify_comment_${comment.comIdx }">
																	<form id="commentModifyForm_${comment.comIdx }" method="post" onsubmit="return checkModifyComment('${comment.comIdx }');">
																		<input type="hidden" name="comIdx" value="${comment.comIdx }">
																		<textarea placeholder="수정할 댓글을 입력해주세요." name="content" id="modify_${comment.comIdx }"></textarea>
																		<input type="hidden" name="status" value="2">
																		<input type="hidden" name="memberId" value="${loginMember.id }">
																	</form>
														
																	<button class="cmt_bottom" type="submit" form="commentModifyForm_${comment.comIdx }">댓글수정</button>
																</div>
															</li>
															</ul>
														</c:if>
														
													</c:forEach>
													</li>
												</ul>
											</section>
										</div>
									</div>
								</section>
							</article>
						</div>
					</section>
					<section class="marketseller_notice">상추마켓은 통신판매중개자로서
						거래당사자가 아니며, 판매자가 등록한 상품정보 및 거래에 대해 상추마켓은 일체 책임을 지지 않습니다.</section>
				</div>
			</div>
		</div>
	</div>
</main>

<script type="text/javascript">
// document.getElementById('wish_img_box').onclick = function() {
	
// 	var current_img = document.getElementById('wish_icon').getAttribute('src');
// 	var start_num = current_img.indexOf("site");
// 	var end_num = current_img.indexOf(".png");

// 	if (current_img.substring(start_num+5, end_num) == "heart") {
<%-- 		document.getElementById('wish_icon').setAttribute('src', '<%=request.getContextPath()%>/img/site/filled_heart.png'); --%>
// 	} else {
<%-- 		document.getElementById('wish_icon').setAttribute('src', '<%=request.getContextPath()%>/img/site/heart.png'); --%>
// 	}
	
	
// }


/* const style1 = document.getElementById('img1'); //.style;
const style2 = document.getElementById('img2').style;
const style3 = document.getElementById('img3').style;
const style4 = document.getElementById('img4').style;
const style5 = document.getElementById('img5').style; */

document.getElementById('imgimg1').style.zIndex = 5;
document.getElementById('imgimg2').style.zIndex = 4;
document.getElementById('imgimg3').style.zIndex = 3;
document.getElementById('imgimg4').style.zIndex = 2;
document.getElementById('imgimg5').style.zIndex = 1;
document.getElementById('imgimg6').style.zIndex = 0;

var style1 = document.getElementById('imgimg1').style.zIndex;
var style2 = document.getElementById('imgimg2').style.zIndex;
var style3 = document.getElementById('imgimg3').style.zIndex;
var style4 = document.getElementById('imgimg4').style.zIndex;
var style5 = document.getElementById('imgimg5').style.zIndex;
var style6 = document.getElementById('imgimg6').style.zIndex;

//alert(style1);
document.getElementById('next1').onclick = function(){
	
	style1++;
	style2++;
	style3++;
	style4++;
	style5++;
	style6++;
	//alert(style1)
	
	if(style1>5){
		style1 = 0;
	}else if(style2>5){
		style2 = 0;
	}else if(style3>5){
		style3 = 0;
	}else if(style4>5){
		style4 = 0;
	}else if(style5>5){
		style5 = 0;
	}else if(style6>5){
		style6 = 0;
	}
	//alert(style5);
	
	document.getElementById('imgimg1').style.zIndex = style1;
	document.getElementById('imgimg2').style.zIndex = style2;
	document.getElementById('imgimg3').style.zIndex = style3;
	document.getElementById('imgimg4').style.zIndex = style4;
	document.getElementById('imgimg5').style.zIndex = style5;
	document.getElementById('imgimg6').style.zIndex = style6;
}
document.getElementById('prev1').onclick = function(){
	
	style1--;
	style2--;
	style3--;
	style4--;
	style5--;
	style6--;
	//alert(style1)
	
	if(style1<0){
		style1 = 5;
	}else if(style2<0){
		style2 = 5;
	}else if(style3<0){
		style3 = 5;
	}else if(style4<0){
		style4 = 5;
	}else if(style5<0){
		style5 = 5;
	}else if(style6<0){
		style6 = 5;
	}
	//alert(style5);
	
	document.getElementById('imgimg1').style.zIndex = style1;
	document.getElementById('imgimg2').style.zIndex = style2;
	document.getElementById('imgimg3').style.zIndex = style3;
	document.getElementById('imgimg4').style.zIndex = style4;
	document.getElementById('imgimg5').style.zIndex = style5;
	document.getElementById('imgimg6').style.zIndex = style6;
}
//document.getElementById('imgimg1').style.zIndex = 5;
//style1.style.
//console.log(style1);
//console.log(window.getElementById(img1).zindex);

	
document.getElementById('thum_1').onclick = function(){
	document.getElementById('imgimg1').style.zIndex = 5;
	document.getElementById('imgimg2').style.zIndex = 4;
	document.getElementById('imgimg3').style.zIndex = 3;
	document.getElementById('imgimg4').style.zIndex = 2;
	document.getElementById('imgimg5').style.zIndex = 1;
	document.getElementById('imgimg6').style.zIndex = 0;
}

document.getElementById('thum_2').onclick = function(){
	document.getElementById('imgimg1').style.zIndex = 0;
	document.getElementById('imgimg2').style.zIndex = 5;
	document.getElementById('imgimg3').style.zIndex = 4;
	document.getElementById('imgimg4').style.zIndex = 3;
	document.getElementById('imgimg5').style.zIndex = 2;
	document.getElementById('imgimg6').style.zIndex = 1;
}

document.getElementById('thum_3').onclick = function(){
	document.getElementById('imgimg1').style.zIndex = 1;
	document.getElementById('imgimg2').style.zIndex = 0;
	document.getElementById('imgimg3').style.zIndex = 5;
	document.getElementById('imgimg4').style.zIndex = 4;
	document.getElementById('imgimg5').style.zIndex = 3;
	document.getElementById('imgimg6').style.zIndex = 2;
}

document.getElementById('thum_4').onclick = function(){
	document.getElementById('imgimg1').style.zIndex = 2;
	document.getElementById('imgimg2').style.zIndex = 1;
	document.getElementById('imgimg3').style.zIndex = 0;
	document.getElementById('imgimg4').style.zIndex = 5;
	document.getElementById('imgimg5').style.zIndex = 4;
	document.getElementById('imgimg6').style.zIndex = 3;
}

document.getElementById('thum_5').onclick = function(){
	document.getElementById('imgimg1').style.zIndex = 3;
	document.getElementById('imgimg2').style.zIndex = 2;
	document.getElementById('imgimg3').style.zIndex = 1;
	document.getElementById('imgimg4').style.zIndex = 0;
	document.getElementById('imgimg5').style.zIndex = 5;
	document.getElementById('imgimg6').style.zIndex = 4;
}

document.getElementById('thum_6').onclick = function(){
	document.getElementById('imgimg1').style.zIndex = 4;
	document.getElementById('imgimg2').style.zIndex = 3;
	document.getElementById('imgimg3').style.zIndex = 2;
	document.getElementById('imgimg4').style.zIndex = 1;
	document.getElementById('imgimg5').style.zIndex = 0;
	document.getElementById('imgimg6').style.zIndex = 5;
}

function checkComment() {
	var commentContent1 = document.getElementById('commentContent');
	if (commentContent1.value == '') {
		alert('댓글을 입력해주세요.');
		return false;
	}
	return true;
}

function checkComment2(idx) {
	var commentContent2 = document.getElementById('commentContent2_'+idx);
	if (commentContent2.value == '') {
		alert('댓글을 입력해주세요.');
		return false;
	}
	return true;
}

function checkModifyComment(idx) {
	var commentModifyContent = document.getElementById('modify_'+idx);
	if (commentModifyContent.value == '') {
		alert('댓글을 입력해주세요.');
		return false;
	}
	return true;
}

function openCmt(idx) {
	var now = document.getElementById("cmt_" + idx);
	if (now.style.display == "none") {
		now.style.display = "block";
		if (document.getElementById("modify_comment_" + idx).style.display == "block") {
			document.getElementById("modify_comment_" + idx).style.display = "none";
		}
	} else {
		now.style.display = "none";
	}
}

function modifyCmt(idx) {
	var now = document.getElementById("modify_comment_" + idx);
	if (now.style.display == "none") {
		now.style.display = "block";
		if (document.getElementById("cmt_" + idx).style.display == "block") {
			document.getElementById("cmt_" + idx).style.display = "none";
		}
	} else {
		now.style.display = "none";
	}
}


function favoriteSubmit() {
	favoriteImg.submit();
	if (${favoriteTf == 0}) {
	alert("찜 상품으로 추가하였습니다.");
	} else {
	alert("찜 상품이 삭제되었습니다.");
	}
}
</script>