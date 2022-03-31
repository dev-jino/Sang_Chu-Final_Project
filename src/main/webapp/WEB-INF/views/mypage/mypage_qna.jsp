<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 Q&A</title>
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
									<div class="my_profile_nick">${loginMember.nicname }</div>
									<div class="my_profile_shop_created">
									</div>
									<div class="my_profile_pro_review">
									</div>
								</div>
								<div class="my_profile_nav">
									<ul>
										<li><a href="<c:url value="/mypage_list"/>"><span>거래내역</span></a></li>
										<li><a href="<c:url value="/mypage_qna"/>"><span>내 QnA</span></a></li>
										<li><a href="<c:url value="/mypage_info_update"/>"><span>회원정보수정</span></a></li>
									</ul>
								</div>
							</div>

							<section class="left_main">
								<div class="comunity_content_title_area_policy">
									<img class="comunity_title_img" src="${pageContext.request.contextPath}/img/site/cart.png" alt="내용 타이틀 이미지" style="width: 30px;"/>
									<span>내 QnA</span>
								</div>
								<br>
								<div class="member_table">
									<table class="faq_list_table">
										<thead>
										<tr>
											<th class="faq_list_th">글번호</th>
											<th class="faq_list_th">제목</th>
											<th class="faq_list_th">작성자</th>
											<th class="faq_list_th">작성일</th>
											<th class="faq_list_th">답글</th>
										</tr>
										</thead>
										<c:forEach var="qna" items="${qnaList}" >
										<tbody>
										<tr>
											<td class="faq_list_td" width="10%">${qna.idx}</td>
											<td class="faq_list_td" width="57%">
												<a href="${pageContext.request.contextPath}/admin_qna_detail?idx=${qna.idx}">${qna.title}</a>
											</td>
											<td class="faq_list_td" width="10%">${qna.memberId}</td>
											<td class="faq_list_td"width="13%">${fn:substring(qna.regDate,0,10)}</td>
											
											<c:choose>
												<c:when test='${qna.commentTitle eq null}'>
												<td class="faq_list_td"width="10%"><a href="${pageContext.request.contextPath}/admin_qna_answer?idx=${qna.idx}">답글달기</a></td>
												</c:when>
												<c:otherwise>
												<td class="faq_list_td"width="10%">답변완료</td>
												</c:otherwise>
											</c:choose>
											</tr>
											<c:if test='${qna.commentTitle ne null}'>
												<tr>
												<td class="faq_list_td" width="10%">&lt;답글&gt;</td>
												<td class="faq_list_td" width="57%">
													<a href="${pageContext.request.contextPath}/admin_qna_detail?idx=${qna.idx}">${qna.commentTitle}</a>
												</td>
												<td class="faq_list_td" width="10%">관리자</td>
												<td class="faq_list_td"width="13%">-</td>
												<td class="faq_list_td"width="10%">-</td>
												</tr>
											</c:if>
										</tbody>
										 </c:forEach> 
									</table>
								</div>

								<div style="text-align: center;">
									<span>
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
									</span>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>