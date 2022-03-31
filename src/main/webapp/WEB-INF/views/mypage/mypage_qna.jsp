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
										<li><a href="<c:url value="/mypage_qna"/>"><span>내 Q&A</span></a></li>
										<li><a href="<c:url value="/mypage_info_update"/>"><span>회원정보수정</span></a></li>
									</ul>
								</div>
							</div>

							<section class="left_main">
								<div class="comunity_content_title_area_policy">
									<img class="comunity_title_img"
										src="${pageContext.request.contextPath}/img/site/q.png"
										style="width: 30px;" alt="내용 타이틀 이미지" /> <span>QnA</span>
								</div>
							</section>
							<%-- **********************************************  --%>
							<section class="left_main profile_right_main">
								<div class="tab_content">		
									<div class="notice_list">
										<c:forEach var="qna" items="${qnaList}" >
											<div class="questions">
												<img class="icon_questions" src="${pageContext.request.contextPath}/img/site/q.png" alt="질문 이미지" height="25"/>
												<span class="title" onclick="ds1('${qna.idx}')">${ qna.title}</span>
												<span class="timeago">${qna.memberId}<c:if test='${qna.commentTitle ne null}'>/답변완료</c:if></span>
												<div class="answer hide"   id="answer_${qna.idx}" style="border-bottom: 0px; border-left: 0px;">
													<c:if test='${qna.upImg ne null}'>
														<img alt="질문이미지" src="${pageContext.request.contextPath}/img/qna/${qna.upImg}" style="margin-left: 100px; width:400px;">
													</c:if>
													
													<span style="margin-left: 50px">${fn:replace(qna.content,replaceChar,"<br/>")}</span>
													<br>
													<br>
													<c:if test="${qna.memberId eq loginMember.id}">
														<div class="write_btn_div"><button type="button"onclick="location.href='${pageContext.request.contextPath}/qna_modify?idx=${qna.idx}'" style="margin-right: 3px; margin-bottom: 3px;">수정</button></div>
														<div class="write_btn_div"><button type="button"onclick="location.href='${pageContext.request.contextPath}/qna_remove?idx=${qna.idx}'" style="margin-right: 3px; margin-bottom: 3px;">삭제</button></div>
													</c:if>
													
													<c:if test='${qna.commentTitle ne null}'>
														<span style="margin-top: 5px; margin-bottom: 0px;"  >
														<img class="icon_questions" src="${pageContext.request.contextPath}/img/site/a.png" alt="질문 이미지" height="30"/></span>
														<span style="margin-left: 50px; margin-top: 0px;  font-size: 14px;"><strong>${qna.commentTitle}</strong></span>
														<span style="margin-left: 50px; margin-bottom:30px;">${fn:replace(qna.commentContent,replaceChar,"<br/>")}</span>
													</c:if>
												</div>
											</div>
										</c:forEach>
										<br>
									</div>
								</div>
							</section>
							</div>
							</div>
						
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>