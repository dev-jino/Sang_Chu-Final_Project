<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- 									<div class="search_wrapper" id="searchWrapper" name="searchBox"> -->
<!-- 										<label class="search_label"> -->
<!-- 											<img src="img/site/faq_search.png" alt="검색 아이콘" /> -->
<!-- 										</label> -->
<!-- 										<input type="text" class="w_10" id="senderName" maxLength="30"  -->
<!-- 											placeholder="질문 키워드를 입력하세요." value="" /> -->
<!-- 										<hr/> -->
<!-- 									</div> -->
									<div>
										<div class="hide">
											<span></span>에 대한 총 검색 결과 총 <span>0<!-- -->개</span>
										</div>
									</div>
									<ul class="faq_tab">
										<li class="" id="faq_tab_li_1" onclick="click_tab('1')"><div>All</div></li>
										<li class="" id="faq_tab_li_2" onclick="click_tab('2')"><div>운영정책</div></li>
										<li class="" id="faq_tab_li_3" onclick="click_tab('3')"><div>계정</div></li>
										<li class="" id="faq_tab_li_4" onclick="click_tab('4')"><div>거래품목</div></li>
										<li class="" id="faq_tab_li_5" onclick="click_tab('5')"><div>이용제재</div></li>
										<li class="" id="faq_tab_li_6" onclick="click_tab('6')"><div>상추페이</div></li>
										<li class="" id="faq_tab_li_7" onclick="click_tab('7')"><div>기타</div></li>
									</ul>
									<ul class="faq_List">
										<c:choose>
											<c:when test="${empty(faqList) }">
												<li class="faq_section">
													<div class="faq_title_wrapper">
														<div align="center">검색된 글이 없습니다.</div>
													</div>
												</li>
											</c:when>
											<c:otherwise>
												<c:forEach var="faq" items="${faqList }">
													<li class="faq_section" id="faq_section_${faq.idx }" value="0">
														<div class="faq_title_wrapper">
															<img class="faq_questions" src="img/site/faq_question.png" alt="질문 이미지"/>
															<div class="faq_title" id="faq_title_${faq.idx }" onclick="open_content('${faq.idx }')">[${faq.category}]${faq.title }</div>
														</div>
														<div class="faq_content">
															${faq.content }
														</div>
													</li>
												</c:forEach>
											</c:otherwise>
										</c:choose>

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
	document.addEventListener("DOMContentLoaded", function(){
 		document.getElementById("faq_tab_li_" + ${index}).classList.toggle('active');
	});

	function click_tab(index) {
		//document.getElementById("faq_tab_li_" + index).classList.toggle('active');
		location.href='<c:url value="/faq?index='+index+'"/>';
	}
	
	function open_content(index) {
		document.getElementById("faq_section_" + index).classList.toggle('active');
	}
</script>