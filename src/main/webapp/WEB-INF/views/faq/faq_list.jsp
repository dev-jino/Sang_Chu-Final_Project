<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="__next">
	<section class="content">
		<h1>상추슈퍼 - 중고거래는 상추슈퍼~!</h1>
		<h2>FAQ</h2>
		<div class="item_list_min">
			<div class="item_list_area">
				<div class="breadcrumbs">
					<ul>
						<li><a href="<%=request.getContextPath()%>/">HOME</a></li>
					</ul>
				</div>
				<div class="main_area">
					<div class="main_area_center">
						<div class="main">
							<div class="left">
								<div class="left_nav_type2">
									<div class="left_nav_type2_title">헬프센터</div>
									<ul class="left_nav_menu">
										<li><a href="<%=request.getContextPath()%>/notice"><span>공지사항</span></a></li>
										<li><a class="active" id="scrollMain" href="<%=request.getContextPath()%>/faq"><span>FAQ</span></a></li>
										<li><a href="<%=request.getContextPath()%>/qna"><span>QnA</span></a></li>
									</ul>
								</div>
							</div>
							<section class="left_main">
								<div class="comunity_content_title_area_policy">
                                    <img class="comunity_title_img" src="<%=request.getContextPath()%>/img/site/faq.png" style="width: 30px;" alt="내용 타이틀 이미지"/>
                                    <span>FAQ관리</span>
                                </div>
								<div class="faq_wrapper">
									<div class="search_wrapper" id="searchWrapper" name="searchBox">
										<label class="search_label">
											<img src="img/site/faq_search.png" alt="검색 아이콘" />
										</label>
										<input type="text" class="w_10" id="senderName" maxLength="30" 
											placeholder="질문 키워드를 입력하세요." value="" />
										<hr/>
									</div>
									<div>
										<div class="hide">
											<span></span>에 대한 총 검색 결과 총 <span>0<!-- -->개</span>
										</div>
									</div>
									<ul class="faq_tab">
										<li class="active" id="faq_tab_li1"><div>Top 10</div></li>
										<li class="" id="faq_tab_li2"><div>상추페이</div></li>
										<li class="" id="faq_tab_li3"><div>이용방법</div></li>
									</ul>
									<ul class="faq_List">
									
										<li class="faq_section" id="faq_section" value="0">
											<div class="faq_title_wrapper">
												<img class="faq_questions" src="img/site/faq_question.png" alt="질문 이미지"/>
												<div class="faq_title" id="faq_title">[헬로페이] 인출신청 하면 언제 입금되나요?</div>
											</div>
											<div class="faq_content">
												출금은 인출신청일 다음 영업일까지 처리되고 있습니다. <br /> <br />평일 오전에 인출신청 하신
												경우, 반나절 빠르게 당일 오후까지 출금 처리가 완료됩니다.
											</div>
										</li>
											
										<li class="faq_section" id="faq_section">
											<div class="faq_title_wrapper">
												<img class="faq_questions" src="img/site/faq_question.png" alt="질문 이미지" />
												<div class="faq_title">[헬로페이] 쿠폰 사용방법을 알려주세요</div>
											</div>
											<div class="faq_content">
												헬로마켓은 다양한 이벤트를 통해 헬로페이 할인쿠폰을 제공하고 있습니다.<br/>
												<br/>할인쿠폰은 헬로페이 결제 시 주문서에서 사용이 가능합니다.<br/>
												<br/>진행 중인 쿠폰 이벤트나 나의메뉴 내 '할인쿠폰'에서 다운 가능한 쿠폰을 확인해보세요.
											</div>
										</li>
										
									</ul>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<script type="text/javascript">
	document.getElementById('faq_tab_li1').onclick = function() {
		alert('test');
	}
</script>