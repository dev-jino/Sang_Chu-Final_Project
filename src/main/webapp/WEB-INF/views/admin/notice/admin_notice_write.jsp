<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
         <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
         <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<div id="__next">
	<section class="content">
		<h1>상추슈퍼 - 중고거래는 상추슈퍼~!</h1>
	    <h2>공지사항 리스트</h2>
	    <div class="item_list_min">
	        <div class="item_list_area inquiery_list_area">
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
										<li><a class="active"id="scrollMain" href="${pageContext.request.contextPath}/admin_notice"><span>공지사항</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_faq"><span>FAQ</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_qna" ><span>QnA</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_exchange"><span>상추관리</span></a></li>
	                                </ul>
	                            </div>
	                        </div>
	                        <section class="left_main">
	
	                            <div class="mail_view">
	                            	<h1>상추슈퍼 - 중고거래는 상추슈퍼~!</h1>
	                                <h2>일반문의 신청 페이지</h2>
	                                <div>공지사항 작성</div>
	
	                                <form name="noticeForm">
	                                    <table class="inquiry_table">
	                                        <tbody>
	
	                                        <tr>
	                                            <td class="label">제목</td>
	                                            <td class="field">
	                                            <input type="text" class="" placeholder="제목을 입력해주세요." value="${notice.title} " name ="title"/></td>
	                                        </tr>
	                                        <tr>
	                                            <td class="field photo_field" colSpan="2" style=" height: 150px;  ">
	                                                <textarea placeholder="내용 입력" class="textarea" rows="20" cols="60" name ="content"></textarea>
	                                            </td>
	                                        </tr>
	
	
	                                        </tbody>
	                                    </table>
	                                <ul class="btn_wrapper btn_wrapper_center">
	                                    <li>
	                                        <button class="btn" type="button" onclick ="noticeSubmitCheck();">작성완료</button>
	                                    </li>
	                                </ul>
	                                </form>
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
	
	function noticeSubmitCheck() {
	if(noticeForm.title.value=="") {
		alert("제목을 입력해 주세요");
		noticeForm.title.focus();
		return;
	}
	if(noticeForm.content.value=="") {
		alert("내용을 입력해 주세요");
		noticeForm.content.focus();
		return;
	}
	noticeForm.method="post";
	noticeForm.action="${pageContext.request.contextPath}/admin_notice_add";
	noticeForm.submit();
		
	}
	</script>