<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	 <% pageContext.setAttribute("replaceChar","\n");  %>
<div id="__next">
	<section class="content">
		<h1>상추슈퍼 - 중고거래는 상추슈퍼~!</h1>
		<h2>관리자 페이지</h2>
		<div class="item_list_min">
			<div class="item_list_area">
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
										<li><a href="${pageContext.request.contextPath}/admin_notice"><span>공지사항</span></a></li>
										<li><a  href="${pageContext.request.contextPath}/admin_faq"><span>FAQ</span></a></li>
										<li><a class="active" id="scrollMain" href="${pageContext.request.contextPath}/admin_qna" ><span>QnA</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_exchange"><span>상추관리</span></a></li>
									</ul>
								</div>
							</div>
							<section class="left_main">
								<div class="comunity_content_title_area_policy">
									<img class="comunity_title_img" src="${pageContext.request.contextPath}/img/site/notice.png" style="width: 30px;" alt="내용 타이틀 이미지" />
									 <span>공지사항관리</span>
								</div>
								
								<br>
								
								<div>Question</div>
								<div class="mail_view">
									<h1>상추슈퍼 - 중고거래는 상추슈퍼~!</h1>
                                   	<h2>FAQ 작성 페이지</h2>
                                   	
                                    <div>
                                        <table class="faq_detail_table">
                                            <tbody>
	                                            <tr class="faq_detail_tr">
	                                                <th class="faq_detail_th">*글번호</th>
	                                                <td class="faq_detail_td">${qa.idx}</td>
	                                                <th class="faq_detail_th">*작성일</th>
	                                                <td class="faq_detail_td">${qa.regDate}</td>
	                                             
	                                            </tr>
	                                            <tr class="faq_detail_tr">
	                                                <th class="faq_detail_th">*제   목</th>
	                                                <td colspan="5" class="faq_detail_td">${qa.title}</td>
	                                            </tr>
	                                            <tr class="faq_detail_tr">
	                                                <td colspan="6" class="table_td_content"><img src="${pageContext.request.contextPath}/img/qna/ace.png" style=" width:300px; margin-left: 200px;"></td>
	                                                
	                                                
                                        
	                                            </tr>
	                                           <tr class="faq_detail_tr"><td class="table_td_content">${fn:replace(qa.content,replaceChar,"<br/>")}</td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <br>
                                   
                                    <c:if test="${qa.commentTitle ne null}">
                                    <div>Answer</div>
                                    <div>
                                        <table class="faq_detail_table">
                                            <tbody>
	                                            
	                                            <tr class="faq_detail_tr">
	                                                <th class="faq_detail_th">*제   목</th>
	                                                <td colspan="5" class="faq_detail_td">${qa.commentTitle}</td>
	                                            </tr>
	                                            <tr class="faq_detail_tr">
	                                                <td colspan="6" class="table_td_content">${fn:replace(qa.commentContent,replaceChar,"<br/>")}</td>
	                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    </c:if>
                                    
                                    <br>
                                    <%-- nclick="location.href='${pageContext.request.contextPath}/admin_notice_delete?idx=${noticeDetail.idx}'" --%>
                                   	<div class="write_btn_div">
                                    	<button class="write_btn" type="button" onclick = "deleteCheck6();" >답글삭제</button>
                                    	 <c:if test="${qa.commentTitle ne null}">
                                    	<button class="write_btn" type="button" onclick ="location.href='${pageContext.request.contextPath}/admin_qna_modify?idx=${qa.idx}'">답글수정</button>
                                    	</c:if>
                                    	<button class="write_btn" type="button" onclick="location.href='${pageContext.request.contextPath}/admin_qna'">목록으로</button>
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
function deleteCheck6(){
	if(!confirm("정말로 삭제하시겠습니까?")){
		return;
	}
	location.href='${pageContext.request.contextPath}/admin_qna_comment_delete?idx=${qa.idx}'
}


</script>
