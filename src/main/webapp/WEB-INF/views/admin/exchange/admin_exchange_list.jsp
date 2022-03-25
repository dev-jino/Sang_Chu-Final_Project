<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
												<col style="width: 15%;"/>
												<col style="width: 15%;"/>
												<col style="width: 25%;"/>
												<col style="width: 15%;"/>
												<col style="width: 13%;"/>
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
													<th class="admin_exchange_th" scope="col">Confirm</th>
												</tr>
											</thead>
											<tbody>
												<!--
												<tr>
													<td colspan="7">검색된 출금신청 내역이 없습니다.</td>
												</tr>
												-->
												<tr class="admin_exchange_tr">	
													<!-- 번호 -->
													<td class="admin_exchange_td">1111</td>
													<!-- 회원 아이디-->
													<td class="admin_exchange_td">test</td>
													<!--회원 이름-->
													<td class="admin_exchange_td">홍길동</td>
													<!--회원 계좌-->
													<td class="admin_exchange_td">000000-00-000000</td>
													<!--출금 금액-->
													<td class="admin_exchange_td">200000</td>
													<!--출금 상태-->
													<td class="admin_exchange_td">출금대기</td>
													<!--승인 버튼-->
													<td class="admin_exchange_td">
														<button type="button">출금승인</button>
													</td>
												</tr>
												<tr class="admin_exchange_tr">	
													<!-- 번호 -->
													<td class="admin_exchange_td">1111</td>
													<!-- 회원 아이디-->
													<td class="admin_exchange_td">test</td>
													<!--회원 이름-->
													<td class="admin_exchange_td">홍길동</td>
													<!--회원 계좌-->
													<td class="admin_exchange_td">0000-000-000000</td>
													<!--출금 금액-->
													<td class="admin_exchange_td">1000000</td>
													<!--출금 상태-->
													<td class="admin_exchange_td">출금완료</td>
													<!--승인 버튼-->
													<td class="admin_exchange_td">
														<button type="button">출금승인</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<br>
									<div id="page_num">
										<span>
											<a href="#">&lt;&lt;</a>
											&nbsp;
											<a href="#">&lt;</a>
										</span>
									<!-- 
										<ol>
											
											<li class="page_list">
												<a href="#" class="other">1</a>
											</li>
											
											<li class="page_list">
												<a href="#">1</a>
											</li>
										</ol>
									 -->
									 	&nbsp;
									 	<span><a href="#">1</a></span>
									 	&nbsp;
									 
										<span>
											<a href="#">&gt;</a>
											&nbsp;
											<a href="#">&gt;&gt;</a>
										</span>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>