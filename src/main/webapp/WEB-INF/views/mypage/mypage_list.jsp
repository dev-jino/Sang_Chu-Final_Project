<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래중인 상품</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
									<div class="my_profile_nick">n16587153</div>
									<div class="my_profile_shop_created">
									</div>
									<div class="my_profile_pro_review">
									</div>
								</div>
								<div class="my_profile_nav">
									<ul>
										<li><a href="<c:url value="/mypage_list"/>"><span>거래내역</span></a></li>
										<li><a href="<c:url value="/mypage_qna"/>"><span>내 Q&A</span></a></li>
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
											<li value="1"><a href="<c:url value="/mypage_list"/>" id="list1" onclick="activeList1();">판매 상품</a></li>
											<li value="2"><a href="<c:url value="/mypage_list"/>" id="list2" onclick="activeList2();">구매 상품</a></li>
											<li value="3"><a href="<c:url value="/mypage_list"/>" id="list3" onclick="activeList3();">거래 중</a></li>
											<li value="4"><a href="<c:url value="/mypage_list"/>" id="list4" onclick="activeList4();">거래 완료</a></li>
											<li value="5"><a href="<c:url value="/mypage_list"/>" id="list5" onclick="activeList5();">찜 상품</a></li>
										</ul>
									</div>
									<div class="cat_box">
										<div class="my_specialist_name">
											전체&nbsp;<span>0</span>
										</div>
										<div class="profile_right_search">
											<div class="regist_search_category_profile">
												<form>
													<input type="text" placeholder="상품명 검색"
														class="keyword_search" value=""><img
														src="https://ccimage.hellomarket.com/web/2017/common/img_search_n.png"
														alt="카테고리 검색 아이콘" class="keyword_image">
												</form>
											</div>
										</div>
										<div class="regist_category_profile">
											<select><option value="">카테고리 전체</option><option value="HAC0000">신발,가방,잡화</option></select>
										</div>
									</div>
									<div class="tab_content">
									<div>
<%-- 										<c:forEach var="productStatusList" items="${productStatusList }"> --%>
										<div class="infinite-scroll-component " style="height:auto;overflow:auto;-webkit-overflow-scrolling:touch">
											<ul class="mian_row profile_main_row">
												<li class="main_col_3">
													<div class="search_icon_box related_item_icon profile_libs_page">
														<div class="search_icon">
															<div class="search_circle"></div>
															<div class="search_rectangle"></div>
														</div>
													</div>
													<a class="card card_list" href="/item/173551272?viewPath=wish_list&amp;clickPath=member">
													<div class="card_box">
														<div class="image_wrapper">
															<div class="image_outside">
																<div class="image_centerbox">
																	<img src="https://ccimage.hellomarket.com/web/2018/main/img_default_thumbnail_495x495.png" data-src="https://ccimg.hellomarket.com/images/2022/item/03/23/19/5150850_5380833_1.jpg?size=s4" class="thumbnail_img" alt="구찌 남녀공용 메탈시계 YA142404"/>
																</div>
															</div>
														</div>
														<div class="cont">
															<div class="item_title related_item_icon">dd</div>
															<div class="item_price profile_price">dddd</div>
														</div>
													</div>
													</a>
												</li>
											</ul>
										</div>
<%-- 										</c:forEach> --%>
									</div>
										<div class="default_message">
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
	
	
	function activeList1() {
		$("#list1").attr('class','active');
	};
	function activeList2() {
		$("#list2").attr('class','active');
	};
	function activeList3() {
		$("#list3").attr('class','active');
	};
	function activeList4() {
		$("#list4").attr('class','active');
	};
	function activeList5() {
		$("#list5").attr('class','active');
	};
	
	</script>
</body>
</html>