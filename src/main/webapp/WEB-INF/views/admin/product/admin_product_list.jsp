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
										<li><a class="active"id="scrollMain" href="<%=request.getContextPath()%>/admin_product" ><span>상품관리</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_notice"><span>공지사항</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_faq"><span>FAQ</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_qna" ><span>QnA</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_exchange"><span>상추관리</span></a></li>
									</ul>
								</div>
							</div>
							<section class="left_main">
								<div class="comunity_content_title_area_policy">
									<img class="comunity_title_img" src="<%=request.getContextPath()%>/img/site/cart.png" alt="내용 타이틀 이미지" style="width: 30px;"/>
									<span>상품관리</span>
								</div>
								<br>
								<div class="member_table">
									<table class="faq_list_table">
										<thead>
										<tr>
											<th class="faq_list_th">상품번호</th>
											<th class="faq_list_th">상품이름</th>
											<th class="faq_list_th">상품사진</th>
											<th class="faq_list_th">판매자</th>
											<th class="faq_list_th">판매시작일</th>
											<th class="faq_list_th">상태</th>
										</tr>
										</thead>
										<tbody>
										<tr>
											<td class="faq_list_td" width="15%">1000</td>
											<td class="faq_list_td" width="15%">피카츄</td>
											<td class="faq_list_td" width="40%"><img id="admin_product_img" src="<%=request.getContextPath()%>/img/site/pica.jpeg"></td>
											<td class="faq_list_td" width="10%">함경식</td>
											<td class="faq_list_td" width="13%">1950.08.15</td>
											<td class="faq_list_td" width="7%">
												<select name="상태">
													<option value="sale">판매중</option>
													<option value="done">판매완료</option>
													<option value="nosale">판매중단</option>
												</select>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<br>
							<div style="text-align: center;"><span>

								<a>이전</a>&nbsp;&nbsp;
								<a>1</a>&nbsp;&nbsp;
								<a>2</a>&nbsp;&nbsp;
								<a>다음</a>

							</span></div>

								
								
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>