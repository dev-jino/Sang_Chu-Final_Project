<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div id="__next">
	<section class="content">
		<h1>상추슈퍼 - 중고거래는 상추슈퍼~!</h1>
		<h2>관리자 페이지</h2>
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
									<div class="left_nav_type2_title">관리자 페이지</div>
									<ul class="left_nav_menu">
										<li><a href="<%=request.getContextPath()%>/admin_member"><span>회원관리</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_product" ><span>상품관리</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_notice"><span>공지사항</span></a></li>
										<li><a class="active"id="scrollMain" href="<%=request.getContextPath()%>/admin_faq"><span>FAQ</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_qna" ><span>QnA</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_exchange"><span>상추관리</span></a></li>
									</ul>
								</div>
							</div>
							<section class="left_main">
								<div class="comunity_content_title_area_policy">
									<img class="comunity_title_img" src="img/site/faq.png" style="width: 30px;" alt="내용 타이틀 이미지" />
									 <span>FAQ관리 - FAQ목록</span>
								</div>
								<br>
								<div class="member_table">
									<div class="">
										<table class="faq_list_table" border="1" summary="">
											<!-- <caption>회원 목록</caption> -->
											<colgroup>
												<col style="width: 10%;"/>
												<col style="width: 15%;"/>
												<col style="width: auto;"/>
												<col style="width: 15%;"/>
											</colgroup>
											<thead>
												<tr>
													<th class="faq_list_th" scope="col">No</th>
													<th class="faq_list_th" scope="col">Category</th>
													<th class="faq_list_th" scope="col">Title</th>
													<th class="faq_list_th" scope="col">Date</th>
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${empty(faqList) }">
													<tr>
														<td class="faq_list_td" colspan="4" align="center">검색된 글이 없습니다.</td>
													</tr>
													</c:when>
													<c:otherwise>
														<c:forEach var="faq" items="${faqList }">
															<tr>	
																<!-- 번호 -->
																<td class="faq_list_td">${faq.idx }</td>
																<!--카테고리-->
																<td class="faq_list_td">${faq.category }</td>
																<!-- 제목-->
																<td class="faq_list_td"><a href="<%=request.getContextPath() %>/admin_faq_detail?idx=${faq.idx}">${faq.title }</a></td>
																<!--작성일-->
																<td class="faq_list_td">${fn:substring(faq.regDate, 0, 10) }</td>
															</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
									</div>
								</div>
								
								<section style="padding: 10px;">
								<div class="write_btn_div">
									<button class="write_btn" type="button" onclick="location.href='<%=request.getContextPath()%>/admin_faq_write'">글등록</button>
								</div>
								</section>
								<br>
								<section>
									<div id="page_num">
										<span>
											<c:if test="${pager.startPage > pager.blockSize }">
												<a href="<%=request.getContextPath()%>/admin_faq?pageNum=1">&lt;&lt;</a>
												&nbsp;
												<a href="<%=request.getContextPath()%>/admin_faq?pageNum=${pager.prevPage }">&lt;</a>
											</c:if>
											<c:if test="${pager.startPage <= pager.blockSize }">
												<a href="<%=request.getContextPath()%>/admin_faq?pageNum=1">&lt;&lt;</a>
												&nbsp;
												<a href="<%=request.getContextPath()%>/admin_faq?pageNum=1">&lt;</a>
											</c:if>
										</span>
	
									 	&nbsp;
									 	<span>
										 	<c:forEach var="index" begin="1" end="${pager.endPage }">
										 		<a href="<%=request.getContextPath()%>/admin_faq?pageNum=${index }">${index }</a>
										 	</c:forEach>
									 	</span>
									 	&nbsp;
									 
										<span>
											<c:if test="${pager.endPage != pager.totalPage }">
												<a href="<%=request.getContextPath()%>/admin_faq?pageNum=${pager.nextPage }">&gt;</a>
												&nbsp;
												<a href="<%=request.getContextPath()%>/admin_faq?pageNum=${pager.totalPage }">&gt;&gt;</a>
											</c:if>
											<c:if test="${pager.endPage == pager.totalPage }">
												<a href="<%=request.getContextPath()%>/admin_faq?pageNum=${pager.totalPage }">&gt;</a>
												&nbsp;
												<a href="<%=request.getContextPath()%>/admin_faq?pageNum=${pager.totalPage }">&gt;&gt;</a>
											</c:if>
										</span>
									</div>
								</section>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>