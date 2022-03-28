<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
		     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
         <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<div id="__next">
	<section class="content">
		<h1>상추슈퍼 - 중고거래는 상추슈퍼~!</h1>
		<h2>관리자 페이지</h2>
		<div class="item_list_min">
			<div class="item_list_area">
				<div class="breadcrumbs">
					<ul>
						<li><a href="${pageContext.request.contextPath}/">HOME</a></li>
					</ul>
				</div>
				<div class="main_area">
					<div class="main_area_center">
						<div class="main">
							<div class="left">
								<div class="left_nav_type2">
									<div class="left_nav_type2_title">관리자 페이지</div>
									<ul class="left_nav_menu">
										<li><a href="${pageContext.request.contextPath}/admin_member"><span>회원관리</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_product" ><span>상품관리</span></a></li>
										<li><a class="active"id="scrollMain" href="${pageContext.request.contextPath}%>/admin_notice"><span>공지사항</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_faq"><span>FAQ</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_qna" ><span>QnA</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_exchange"><span>상추관리</span></a></li>
									</ul>
								</div>
							</div>
							<section class="left_main">
								<div class="comunity_content_title_area_policy">
									<img class="comunity_title_img" src="${pageContext.request.contextPath}/img/site/notice.png" alt="내용 타이틀 이미지" style="width: 30px;"/>
									<span>공지사항관리</span>
								</div>
								<br>
								<div class="member_table">
									<table class="admin_notice_table">
										<thead>
										<tr>
											<th class="faq_list_th">글번호</th>
											<th class="faq_list_th">제목</th>
											
											<th class="faq_list_th">작성일</th>
											
										</tr>
										</thead>
										<tbody>
									 <c:forEach var="adminNotice" items="${noticeList}" >
										<tr>
											<td class="faq_list_td" width="10%">${adminNotice.idx}</td>
											<td class="faq_list_td" width="60%">
												<a href="${pageContext.request.contextPath}/admin_notice_detail?idx=${adminNotice.idx}">${adminNotice.title}</a>
											</td>
											
											<td class="faq_list_td" width="10%" style="font-size: 11px">${fn:substring(adminNotice.regDate,0,10)}</td>
											
										</tr>
									</c:forEach>
										</tbody>
									</table>
								</div>
								<br>
								<div class="write_btn_div">
									<button class="write_btn" type="button" onclick="location.href='${pageContext.request.contextPath}/admin_notice_write'">글작성</button>
								</div>							
								<div style="text-align: center;" id="numbering"><span>
								<c:choose>
								<c:when test="${pager.startPage > 5}">		
									<a href="?pageNum=${pager.prevPage}">이전</a>&nbsp;&nbsp;
								</c:when>
								<c:otherwise>
									<span>이전</span>&nbsp;&nbsp;
								</c:otherwise>
								</c:choose>
								<c:forEach var="i" begin="${pager.startPage}" end="${pager.endPage}">
                   				<a href="?pageNum=${i}">${i}</a> &nbsp;&nbsp;
                				
                				</c:forEach>  
									<c:choose>
								<c:when test="${pager.endPage > 5}">		
									<a href="?pageNum=${pager.nextPage}">다음</a>&nbsp;&nbsp;
								</c:when>
								<c:otherwise>
									<span>다음</span>&nbsp;&nbsp;
								</c:otherwise>
								</c:choose>
								</span></div>

								
								
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>