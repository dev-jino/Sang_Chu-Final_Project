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
									 <span>FAQ관리 - FAQ읽기</span>
								</div>
								
								<br>
			
								<div class="mail_view">
									<h1>상추슈퍼 - 중고거래는 상추슈퍼~!</h1>
                                   	<h2>FAQ 작성 페이지</h2>
                                    <div>
                                        <table class="faq_detail_table">
                                            <tbody>
	                                            <tr class="faq_detail_tr">
	                                                <th class="faq_detail_th">*글번호</th>
	                                                <td class="faq_detail_td">1111</td>
	                                                <th class="faq_detail_th">*작성일</th>
	                                                <td class="faq_detail_td">2022-03-02</td>
	                                                <th class="faq_detail_th">*아이디</th>
	                                                <td class="faq_detail_td">test123</td>
	                                            </tr>
	                                            <tr class="faq_detail_tr">
	                                                <th class="faq_detail_th">*제   목</th>
	                                                <td colspan="5" class="faq_detail_td">test입니다.</td>
	                                            </tr>
	                                            <tr class="faq_detail_tr">
	                                                <td colspan="6" class="table_td_content">test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.test중이빈다.</td>
	                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <br>
                                   	<div class="write_btn_div">
                                    	<button class="write_btn" type="button" onclick="location.href='#'">수정하기</button>
                                    	<button class="write_btn" type="button" onclick="location.href='#'">삭제하기</button>
                                    	<button class="write_btn" type="button" onclick="location.href='/admin_faq_list'">목록으로</button>
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