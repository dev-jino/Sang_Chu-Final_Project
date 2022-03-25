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
												<col style="width: 5%;"/>
												<col style="width: auto;"/>
												<col style="width: 15%;"/>
												<col style="width: 15%;"/>
											</colgroup>
											<thead>
												<tr>
													<th class="faq_list_th" scope="col">No</th>
													<th class="faq_list_th" scope="col">Title</th>
													<th class="faq_list_th" scope="col">ID</th>
													<th class="faq_list_th" scope="col">Date</th>
												</tr>
											</thead>
											<tbody>
												<!--
												<tr>
													<td colspan="7">검색된 글이 없습니다.</td>
												</tr>
												-->
												<tr>	
													<!-- 번호 -->
													<td class="faq_list_td">1111</td>
													<!-- 제목-->
													<td class="faq_list_td"><a href="admin/faq/detail">test페이지입니다.</a></td>
													<!--아이디-->
													<td class="faq_list_td">test123</td>
													<!--작성일-->
													<td class="faq_list_td">2022.03.01</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<br>
								<div class="write_btn_div">
									<button class="write_btn" type="button" onclick="location.href='<%=request.getContextPath()%>/admin_faq_write'">글등록</button>
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
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>