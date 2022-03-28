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
										<li><a class="active"id="scrollMain" href="<%=request.getContextPath()%>/admin_faq"><span>FAQ</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_qna" ><span>QnA</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_exchange"><span>상추관리</span></a></li>
									</ul>
								</div>
							</div>
							<section class="left_main">
								<div class="comunity_content_title_area_policy">
									<img class="comunity_title_img" src="img/site/faq.png" style="width: 30px;" alt="내용 타이틀 이미지" />
									 <span>FAQ관리 - FAQ수정</span>
								</div>
								
								<div class="mail_view">
									<h1>상추슈퍼 - 중고거래는 상추슈퍼~!</h1>
                                   	<h2>FAQ 작성 페이지</h2>
                                    <form id="faq_form" method="post" action="<%=request.getContextPath()%>/admin_faq_modify" onsubmit="return checkForm();">
                                    	<input name="idx" type="text" value="${faq.idx }" hidden="hidden"/>
                                        <table class="inquiry_table">
                                            <tbody>
	                                            <tr>
	                                                <td class="label">*카테고리</td>
	                                                <td class="field">
	                                                	<select name="category" id="admin_faq_write_category">
	                                                		<option disabled value="" style="display:none">선택하세요.</option>
	                                                		<option value="운영정책" <c:if test="${faq.category == '운영정책'}">selected="selected"</c:if>>운영정책</option>
	                                                		<option value="계정" <c:if test="${faq.category == '계정'}">selected="selected"</c:if>>계정</option>
	                                                		<option value="거래품목" <c:if test="${faq.category == '거래품목'}">selected="selected"</c:if>>거래품목</option>
	                                                		<option value="이용제재" <c:if test="${faq.category == '이용제재'}">selected="selected"</c:if>>이용제재</option>
	                                                		<option value="상추페이" <c:if test="${faq.category == '상추페이'}">selected="selected"</c:if>>상추페이</option>
	                                                		<option value="기타" <c:if test="${faq.category == '기타'}">selected="selected"</c:if>>기타</option>
	                                                	</select>
	                                                </td>
	                                            </tr>
	                                            <c:if test="${faq.category } == '운영정책'">selected</c:if>
	                                            <tr>
	                                                <td class="label">*제목</td>
	                                                <td class="field">
	                                                	<input name="title" id="admin_faq_write_title" type="text" class="" placeholder="제목을 입력해주세요." value="${faq.title }"/>
	                                                </td>
	                                            </tr>
	                                            <tr>
	                                            	<td class="label label_content">*내용</td>
	                                                <td class="field field_content">
	                                                	<textarea name="content" id="admin_faq_write_content" placeholder="내용을 입력해주세요." class="textarea" rows="15">${faq.content }</textarea>
	                                                </td>
	                                            </tr>
                                            </tbody>
                                        </table>
                                    </form>
                                   	<div class="write_btn_div">
                                    	<button class="write_btn" type="submit" form="faq_form">수정하기</button>
                                    	<button class="write_btn" type="button" onclick="location.href='<%=request.getContextPath()%>/admin_faq'">취소</button>
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
<script type="text/javascript">
function checkForm() {
	var category = document.getElementById('admin_faq_write_category');
	if (category.value == '') {
		alert('카테고리를 선택해주세요.');
		return false;
	} 

	var title = document.getElementById('admin_faq_write_title');
	if (title.value == '') {
		alert('제목을 입력해주세요.');
		return false;
	}
	
	var content = document.getElementById('admin_faq_write_content');
	if (content.value == '') {
		alert('내용을 입력해주세요.');
		return false;
	}
	
	return true;
}
</script>