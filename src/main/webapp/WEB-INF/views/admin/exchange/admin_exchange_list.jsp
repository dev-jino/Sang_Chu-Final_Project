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
										<li><a href="<%=request.getContextPath()%>/admin_member"><span>회원관리</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_product" ><span>상품관리</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_notice"><span>공지사항</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_faq"><span>FAQ</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_qna" ><span>QnA</span></a></li>
										<li><a class="active"id="scrollMain" href="<%=request.getContextPath()%>/admin_exchange"><span>상추관리</span></a></li>
									</ul>
								</div>
							</div>
							<section class="left_main">
								<div class="comunity_content_title_area_policy">
									<img class="comunity_title_img" src="img/site/exchange.png" style="width: 30px;" alt="내용 타이틀 이미지" />
									 <span>상추관리</span>
								</div>
								<br>
								<div class="admin_exchange_table">
									<div class="">
										<table class="admin_exchange_table" border="1" summary="">
											<!-- <caption>출금신청 목록</caption> -->
											<colgroup>
												<col style="width: 5%;"/>
												<col style="width: 13%;"/>
												<col style="width: 13%;"/>
												<col style="width: 20%;"/>
												<col style="width: 13%;"/>
												<col style="width: 12%;"/>
												<col style="width: 12%;"/>
												<col style="width: 12%;"/>
											</colgroup>
											<thead>
												<tr>
													<th class="admin_exchange_th" scope="col">No</th>
													<th class="admin_exchange_th" scope="col">ID</th>
													<th class="admin_exchange_th" scope="col">Name</th>
													<th class="admin_exchange_th" scope="col">Account</th>
													<th class="admin_exchange_th" scope="col">Amount</th>
													<th class="admin_exchange_th" scope="col">Status</th>
													<th class="admin_exchange_th" scope="col" colspan="2">Confirm</th>
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${empty(CoinMemberJoinList) }">
														<tr>
															<td class="admin_exchange_td" colspan="7" align="center">검색된 출금신청 내역이 없습니다.</td>
														</tr>
													</c:when>
													<c:otherwise>
														<c:forEach var="coinMemberJoin" items="${CoinMemberJoinList }">
														<tr class="admin_exchange_tr">
															<!-- 번호 -->
															<td class="admin_exchange_td">${coinMemberJoin.coin.idx }</td>
															<!-- 회원 아이디 -->
															<td class="admin_exchange_td">${coinMemberJoin.member.id }</td>
															<!-- 회원 이름 -->
															<td class="admin_exchange_td">${coinMemberJoin.member.name }</td>
															<!-- 회원 계좌 -->
															<td class="admin_exchange_td">${coinMemberJoin.member.account }</td>
															<!-- 출금 금액 -->
															<td class="admin_exchange_td">${coinMemberJoin.coin.exCoin }</td>
															<!-- 출금 상태 -->
															<td class="admin_exchange_td">
																<c:if test="${coinMemberJoin.coin.status == 1 }">
																	출금대기
																</c:if>
																<c:if test="${coinMemberJoin.coin.status == 2 }">
																	출금완료
																</c:if>
																<c:if test="${coinMemberJoin.coin.status == 9 }">
																	출금취소
																</c:if>
															</td>
															<!-- 승인 버튼 -->
															<td class="admin_exchange_td">
																<form method="post" id="approveForm${coinMemberJoin.coin.idx }" action="<%=request.getContextPath()%>/admin_exchange">
																	<input type="hidden" name="memberId" value="${coinMemberJoin.member.id }">
																	<input type="hidden" name="idx" value="${coinMemberJoin.coin.idx }">
																	<input type="hidden" name="exCoin" value="${coinMemberJoin.coin.exCoin }">
																	<input type="hidden" name="status" value="2">
																</form>
																<button id="approveBtn${coinMemberJoin.coin.idx }" type="submit" form="approveForm${coinMemberJoin.coin.idx }" 
																	<c:if test="${coinMemberJoin.coin.status != 1 }">disabled="disabled"</c:if>>출금승인</button>
																
															</td>
															<!-- 취소 버튼 -->
															<td class="admin_exchange_td">
																<form method="post" id="cancelForm${coinMemberJoin.coin.idx }" action="<%=request.getContextPath()%>/admin_exchange">
																	<input type="hidden" name="memberId" value="${coinMemberJoin.member.id }">
																	<input type="hidden" name="idx" value="${coinMemberJoin.coin.idx }">
																	<input type="hidden" name="exCoin" value="${coinMemberJoin.coin.exCoin }">
																	<input type="hidden" name="status" value="9">
																</form>
																<button id="cancelBtn${coinMemberJoin.coin.idx }" type="submit" form="cancelForm${coinMemberJoin.coin.idx }" 
																	<c:if test="${coinMemberJoin.coin.status != 1 }">disabled="disabled"</c:if>>출금취소</button>
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
													<a href="<%=request.getContextPath()%>/admin_exchange?pageNum=1">&lt;&lt;</a>
													&nbsp;
													<a href="<%=request.getContextPath()%>/admin_exchange?pageNum=${pager.prevPage }">&lt;</a>
												</c:if>
												<c:if test="${pager.startPage <= pager.blockSize }">
													<a href="<%=request.getContextPath()%>/admin_exchange?pageNum=1">&lt;&lt;</a>
													&nbsp;
													<a href="<%=request.getContextPath()%>/admin_exchange?pageNum=1">&lt;</a>
												</c:if>
											</span>
		
										 	&nbsp;
										 	<span>
											 	<c:forEach var="index" begin="1" end="${pager.endPage }">
											 		<a href="<%=request.getContextPath()%>/admin_exchange?pageNum=${index }">${index }</a>
											 	</c:forEach>
										 	</span>
										 	&nbsp;
										 
											<span>
												<c:if test="${pager.endPage != pager.totalPage }">
													<a href="<%=request.getContextPath()%>/admin_exchange?pageNum=${pager.nextPage }">&gt;</a>
													&nbsp;
													<a href="<%=request.getContextPath()%>/admin_exchange?pageNum=${pager.totalPage }">&gt;&gt;</a>
												</c:if>
												<c:if test="${pager.endPage == pager.totalPage }">
													<a href="<%=request.getContextPath()%>/admin_exchange?pageNum=${pager.totalPage }">&gt;</a>
													&nbsp;
													<a href="<%=request.getContextPath()%>/admin_exchange?pageNum=${pager.totalPage }">&gt;&gt;</a>
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