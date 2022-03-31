<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래중인 상품</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
#okBtn {
	background-color: green;
	color: white;
	border-radius: 5px;
	width: 80px;
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
							<h2>회원프로필 영역</h2>
							<div class="my_profile_left">
								<div class="my_profile_info">
									<div class="my_profile_image">
										<img src="<c:url value="/img/site/user.png"/>">
									</div>
									<div class="my_profile_nick">${loginMember.nicname }</div>
									<div class="my_profile_shop_created">
									</div>
									<div class="my_profile_pro_review">
									</div>
								</div>
								<div class="my_profile_nav">
									<ul>
										<li><a href="<c:url value="/mypage_list"/>"><span>거래내역</span></a></li>
										<li><a href="<c:url value="/mypage_info_update"/>"><span>회원정보수정</span></a></li>
									</ul>
								</div>
							</div>
							<h2>회원 탭 영역</h2>
							<section class="left_main profile_right_main">
								<div class="tab_content">
									<div class="my_profile_item_menu">
										<ul>
											<%-- a의 class를 active로 놓으면 밑줄 --%>
											<li ><a id="list1" onclick="activeList(1);">판매 상품</a></li>
											<li ><a id="list2" href="<c:url value="/mypage_buy"/>">구매 상품</a></li>
											<li ><a id="list3" onclick="activeList(3);">거래 중</a></li>
											<li ><a id="list4" onclick="activeList(4);">판매 완료</a></li>
											<li ><a id="list5" href="<c:url value="/mypage_favorite"/>">찜 상품</a></li>
										</ul>
									</div>
									<div class="cat_box">
										<div class="my_specialist_name">
											전체&nbsp;<span>${countProduct }개</span>
										</div>
									</div>
									
									<div class="tab_content">
									<div>
										<c:forEach var="product" items="${productPaging}">
											<ul style="position:relative; left:10px; bottom: 250px; list-style: none;">
												<li class="main_col_3" style="float: left; width: 30%;">
													<a class="card card_list" href="<c:url value="/product_detail?idx=${product.idx }"/>">
													<div class="card_box">
														<div class="image_wrapper">
															<div class="image_outside" >
																<div class="image_centerbox" style="bottom:300px; left:-222px;">
																	<img src="<c:url value="/img/product/${product.img }"/>" style="width: 222px; height: 222px;"/>
																</div>
															</div>
														</div>
														<div class="cont">
															<div class="item_title related_item_icon">${product.title }</div>
															<div class="item_price profile_price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${product.price }"/>원</div>
														</div>
														
														
														<c:if test="${status eq 3 && product.memberId eq loginMember.id }" >
															<div>
																<form method="post" onsubmit="alert('상품판매를 완료하였습니다');">
																<input type="hidden" name="idx" value="${product.idx }">
																<button type="submit" id="okBtn" class="search_icon_box related_item_icon profile_libs_page">판매하기</button>
																</form>
															</div>
														</c:if>
													</div>
													</a>
												</li>
											</ul>
										</c:forEach>
									</div>
										<div class="default_message">
										</div>
									</div>
									<div id="page_num">
										<span>
											<c:if test="${pager.startPage > pager.blockSize }">
												<a href="<c:url value="/mypage_list?status=${status }&pageNum=1"/>">&lt;&lt;</a>
												&nbsp;
												<a href="<c:url value="/mypage_list?status=${status }&pageNum=${pager.prevPage }"/>">&lt;</a>
											</c:if>
											<c:if test="${pager.startPage <= pager.blockSize }">
												<a href="<c:url value="/mypage_list?status=${status }&pageNum=1"/>">&lt;&lt;</a>
												&nbsp;
												<a href="<c:url value="/mypage_list?status=${status }&pageNum=1"/>">&lt;</a>
											</c:if>
										</span>
	
									 	&nbsp;
									 	<span>
										 	<c:forEach var="index" begin="1" end="${pager.endPage }">
										 		<a href="<c:url value="/mypage_list?status=${status }&pageNum=${index }"/>">&nbsp;&nbsp;${index }&nbsp;&nbsp;</a>
										 	</c:forEach>
									 	</span>
									 	&nbsp;
									 
										<span>
											<c:if test="${pager.endPage != pager.totalPage }">
												<a href="<c:url value="/mypage_list?status=${status }&pageNum=${pager.nextPage }"/>">&gt;</a>
												&nbsp;
												<a href="<c:url value="/mypage_list?status=${status }&pageNum=${pager.totalPage }"/>">&gt;&gt;</a>
											</c:if>
											<c:if test="${pager.endPage == pager.totalPage }">
												<a href="<c:url value="/mypage_list?status=${status }&pageNum=${pager.totalPage }"/>">&gt;</a>
												&nbsp;
												<a href="<c:url value="/mypage_list?status=${status }&pageNum=${pager.totalPage }"/>">&gt;&gt;</a>
											</c:if>
										</span>
									</div>
									<br>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>


	<script type="text/javascript">
	
	$(document).ready(function () {
	    $("#list" + ${status}).attr('class','active');
	});
	
	function activeList(status) {
		location.href='<c:url value="/mypage_list?status='+status+'"/>';
	};
	
	</script>
</body>
</html>