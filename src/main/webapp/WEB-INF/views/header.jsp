<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>상추슈퍼 - 중고거래는 상추슈퍼~!</title>
<section class="header_top">
	<div class="header_logo header_logo_s">
		<div class="log_box">
			<a href="<%=request.getContextPath()%>/">
				<img src="img/site/title.png" class="logo" alt="상추슈퍼 로고"/>
				<img src="img/site/title.png" class="mobile_logo" alt="상추슈퍼 로고"/></a>
		</div>
		<!-- 비로그인시 -->
		
		<div class="btn_box">
			<a class="btn_login_box" href="<c:url value="/login"/>"><button class="login_btn">로그인</button></a>
			<a class="btn_signup_box" href="<c:url value="/join"/>"><button class="signup_btn">회원가입</button></a>
			<div class="notification_box"><a href="msearch.html"></a></div>
			
			
			<div class="nick" id="nick">
				<img src="img/site/user.png" width="36" height="36" alt="n16587153의 프로필 사진" class="profile_img">
				<span class="nick_title">test님</span>
			</div>
			
			
		</div>
		<!-- 
		<div class="btn_box">
			<div class="nick" id="nick">
				<img src="img/site/user.png" width="36" height="36" alt="n16587153의 프로필 사진" class="profile_img">
				<span class="nick_title">test님</span>
			</div>
		-->
			<!--
			<div class="notification_box">
				<a href="https://account.hellomarket.com/messages" target="_blank" rel="noopener noreferrer">
					<img src="https://ccimage.hellomarket.com/web/2019/common/btn_title_hellotalk.png" alt="채팅 아이콘" class="chat">
				</a>
				<a href="https://account.hellomarket.com/alarms" target="_blank">
					<img src="https://ccimage.hellomarket.com/web/2019/common/btn_title_notification.png" alt="알림목록 아이콘" class="alram">
				</a>
			</div>
			-->
		<!-- 
		</div>
		-->
		<div>
			<div class="gnb_my_lyr test_type hide" id="myinfo">
				<ul class="gnb_my_list">
					<li class="gnb_my_list_first"><a style="display:block;" href="<c:url value="/mypage_list"/>">마이 페이지</a></li>
					<li><a style="display:block;" href="<c:url value="/mypage_pay"/>">결제관리</a></li>
					<li><a style="display:block;" href="<c:url value="/admin_member"/>">관리자 페이지</a></li>
					<li class="gnb_my_list_last">로그아웃</li>
				</ul>
			</div>
		</div>
		
		<div class="header_search" id="tebas">
			<div class="com_search_box">
				<div>
					<div>
						<input type="text" class="com_search" id="com_search" style="border-bottom: 1px solid #9ea4aa" 
							placeholder="어떤 상품을 찾고 계세요?" value="" />
						<div class="search_icon_box search_engine_icon">
							<div class="search_icon">
								<div class="search_circle" style="border-color: #9ea4aa"></div>
								<div class="search_rectangle" style="border-color: #9ea4aa; background-color: #9ea4aa"></div>
							</div>
						</div>
						<div class="w_search_modal hide" id="w_search_modal">
							<div>
								<div class="search_related">
									<ul>
										<li>
											<mark>test</mark>
										</li>
										<li>
											this is
											<mark>test</mark>
										</li>
									</ul>
								</div>
							</div>
							<div class="search_close" id="search_close">
								<div>닫기</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="header_cat">
	<div class="header_wrapper">
		<div>
			
			<div class="btn_box header_wrapper_sub">
				<!--
				<input type="checkbox" class="cat_checkbox chkbox1" />
				<i class="arrow"></i><span for="cat_checkbox" class="selectbox">카테고리</span>
				-->
			<ul class="header_ul">
				<li><a href="#">전체상품</a></li>
				<li><a href="<c:url value="/product_list"/>">가구·가전</a></li>
				<li><a href="#">생활·식품</a></li>
				<li><a href="#">게임·취미</a></li>
				<li><a href="#">의류·잡화</a></li>
				<li><a href="#">기타</a></li>
			</ul>
		</div>
		<!-- 
		<div class="header_wrapper_sub_test">
			<span class="testtest"><i class="fa-solid fa-robot"></i>가구, 가전</span>
		</div>
		-->
		</div>
		<div class="sellimg_sub_box header_wrapper_sub">
			<div class="selling_bot" style="cursor: pointer;" onclick="location.href='<c:url value="/sale';"/>">
				<img src="img/site/camera.png" alt="판매하기 이미지" class="selling_bot_img">
				<span class="selling_bot_text">
					판매하기
				</span>
			</div>
		</div>
		<div class="link_box header_wrapper_sub">
		</div>
	</div>
</section>