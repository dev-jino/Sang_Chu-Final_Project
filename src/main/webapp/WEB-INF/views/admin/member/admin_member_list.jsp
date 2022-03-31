<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
										<li><a class="active"id="scrollMain" href="<%=request.getContextPath()%>/admin_member"><span>회원관리</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_product" ><span>상품관리</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_notice"><span>공지사항</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_faq"><span>FAQ</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_qna" ><span>QnA</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_exchange"><span>상추관리</span></a></li>
									</ul>
								</div>
							</div>
							<section class="left_main">
								<div class="comunity_content_title_area_policy">
									<img class="comunity_title_img" src="img/site/user.png" style="width: 30px;" alt="내용 타이틀 이미지" />
									 <span>회원관리</span>
								</div>
								<br>
								<div class="admin_member_table">
									<div class="">
										<table class="admin_member_table" border="1" summary="">
											<!-- <caption>회원 목록</caption> -->
											<colgroup>
												<col style="width: 14%;"/>
												<col style="width: 13%;"/>
												<col style="width: 14%;"/>
												<col style="width: 16%;"/>
												<col style="width: 20%;"/>
												<col style="width: 13%;"/>
												<col style="width: 10%;"/>
											</colgroup>
											<thead>
												<tr>
													<th class="admin_member_th" scope="col">ID</th>
													<th class="admin_member_th" scope="col">Name</th>
													<th class="admin_member_th" scope="col">NicName</th>
													<th class="admin_member_th" scope="col">Phone</th>
													<th class="admin_member_th" scope="col">Account</th>
													<th class="admin_member_th" scope="col">Coin</th>
													<th class="admin_member_th" scope="col">Status</th>
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${empty(memberList) }">
														<tr>
															<td colspan="7" class="admin_member_td" align="center">검색된 회원이 없습니다.</td>
														</tr>
													</c:when>
													<c:otherwise>
															<c:forEach var="member" items="${memberList }">
																<tr class="admin_member_tr">	
																	<!-- 회원 아이디 -->
																	<td class="admin_member_td">${member.id }</td>
																	<!-- 회원 이름-->
																	<td class="admin_member_td">${member.name }</td>
																	<!--회원 닉네임-->
																	<td class="admin_member_td">${member.nicname }</td>
																	<!--회원 전화번호-->
																	<td class="admin_member_td">${member.phone }</td>
																	<!--회원 계좌-->
																	<td class="admin_member_td">${member.account }</td>
																	<!--회원 코인-->
																	<td class="admin_member_td">${member.coin }</td>
																	<!--회원 상태-->
																	<td class="admin_member_td">
																		<form method="post" id="member_status_form" action="<%=request.getContextPath()%>/admin_member">
																		<input type="text" name="id" value="${member.id }" hidden="hidden">
																		<input type="text" name="pageNum" value="${pager.pageNum }" hidden="hidden">
																		<select class="status" name="status" onchange="this.form.submit()">
																			<option value="0" 
																				<c:if test="${member.status == 2 }">selected = "selected"</c:if>>삭제회원</option>			
																			<option value="1" 
																				<c:if test="${member.status == 1 }">selected = "selected"</c:if>>일반회원</option>			
																			<option value="9" 
																				<c:if test="${member.status == 9 }">selected = "selected"</c:if>>관리자</option>			
																		</select>
																		</form>
																	</td>
																</tr>
															</c:forEach>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
									</div>
									<br>
									<section>
										<div id="page_num">
											<span>
												<c:if test="${pager.startPage > pager.blockSize }">
													<a href="<%=request.getContextPath()%>/admin_member?pageNum=1">&lt;&lt;</a>
													&nbsp;
													<a href="<%=request.getContextPath()%>/admin_member?pageNum=${pager.prevPage }">&lt;</a>
												</c:if>
												<c:if test="${pager.startPage <= pager.blockSize }">
													<a href="<%=request.getContextPath()%>/admin_member?pageNum=1">&lt;&lt;</a>
													&nbsp;
													<a href="<%=request.getContextPath()%>/admin_member?pageNum=1">&lt;</a>
												</c:if>
											</span>
		
										 	&nbsp;
										 	<span>
											 	<c:forEach var="index" begin="1" end="${pager.endPage }">
											 		<a href="<%=request.getContextPath()%>/admin_member?pageNum=${index }">${index }</a>
											 	</c:forEach>
										 	</span>
										 	&nbsp;
										 
											<span>
												<c:if test="${pager.endPage != pager.totalPage }">
													<a href="<%=request.getContextPath()%>/admin_member?pageNum=${pager.nextPage }">&gt;</a>
													&nbsp;
													<a href="<%=request.getContextPath()%>/admin_member?pageNum=${pager.totalPage }">&gt;&gt;</a>
												</c:if>
												<c:if test="${pager.endPage == pager.totalPage }">
													<a href="<%=request.getContextPath()%>/admin_member?pageNum=${pager.totalPage }">&gt;</a>
													&nbsp;
													<a href="<%=request.getContextPath()%>/admin_member?pageNum=${pager.totalPage }">&gt;&gt;</a>
												</c:if>
											</span>
										</div>
									</section>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>