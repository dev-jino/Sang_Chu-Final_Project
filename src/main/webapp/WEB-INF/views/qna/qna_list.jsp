<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <% pageContext.setAttribute("replaceChar","\n");  %>

   <style type="text/css">
        .comunity_content_title_area_policy {
            height: 60px;
        }

        .comunity_content_title_area_policy .comunity_title_img {
            margin: 15px 0 15px 15px;
        }

        .comunity_content_title_area_policy span{
            margin: 15px;
            position: absolute;
            top: 230px;}
        
        
    </style>
<div id="__next">
	<section class="content">
		<h1>헬로마켓 - 100% 비대면 안전 결제 중고거래 마켓</h1>
		<h2>공지사항</h2>
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
									<div class="left_nav_type2_title">헬프센터</div>
									<ul class="left_nav_menu">
										<li><a href="${pageContext.request.contextPath}/notice"><span>공지사항</span></a></li>
										<li><a href="${pageContext.request.contextPath}/faq"><span>FAQ</span></a></li>
										<li><a class="active" id="scrollMain"
											href="${pageContext.request.contextPath}/qna"><span>QnA</span></a></li>
									</ul>
								</div>
							</div>
							<section class="left_main">
								<div class="comunity_content_title_area_policy">
									<img class="comunity_title_img"
										src="${pageContext.request.contextPath}/img/site/q.png"
										style="width: 30px;" alt="내용 타이틀 이미지" /> <span>QnA</span>
								</div>
								   <div class="notice_list_wrapper">

									
								<div class="notice_list">


									<%-- <c:forEach var="qna" items="${qnaList}">
										<tr></tr>
										<div class="questions">
											<img class="icon_questions"
												src="${pageContext.request.contextPath}/img/site/q.png"
												alt="질문 이미지" height="25" /> <span class="title"
												onclick="ds1('${qna.idx}')">${qna.title}</span> <span
												class="timeago" style="float: right">${fn:substring(qna.regDate,0,10) }</span>
											<div class="answer hide" style="appearance: auto"
												id="answer_${qna.idx}">
												<img alt="답변" class="icon_answer" height="25" width="25"
													src="${pageContext.request.contextPath}/img/site/a.png">
												<span>${qna.qnaComment}</span>


											</div>
										</div>
									</c:forEach> --%>
									
                                       <c:forEach var="qna" items="${qnaList}" >
                                    
                                        <div class="questions">
                                            <img class="icon_questions" src="${pageContext.request.contextPath}/img/site/q.png" alt="질문 이미지" height="25"/>
                                            <span class="title" onclick="ds1('${qna.idx}')">${ qna.title}</span>
                                            
                                            <span class="timeago">${qna.memberId}<c:if test='${qna.commentTitle ne null}'>/답변완료</c:if></span>
                                           
                                            <div class="answer hide"   id="answer_${qna.idx}" style="border-bottom: 0px; border-left: 0px;">
	                                            	<c:if test='${qna.upImg eq null}'>
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
                                                <span style="margin-top: 5px; margin-bottom: 0px;"  ><img class="icon_questions" src="${pageContext.request.contextPath}/img/site/a.png" alt="질문 이미지" height="30"/></span>
                                               	
                                               	<span style="margin-left: 50px; margin-top: 0px;  font-size: 14px;"><strong>${qna.commentTitle}</strong></span>
                                               	
                                                <span style="margin-left: 50px; margin-bottom:30px;">${fn:replace(qna.commentContent,replaceChar,"<br/>")}</span>
                                                
                                                
                                                </c:if>
                                       
                                                
                                            </div>
											                                         
                                            
                                        </div>
                                      
                                        
                                       </c:forEach> 
									

									<br>
									<c:if test="${loginMember.id ne null}">
									<div class="write_btn_div">
										<button type="button"
											onclick="location.href='${pageContext.request.contextPath}/qna_write'">
											문의하기</button>
									</div>
									</c:if>
									
									
									<div style="text-align: center;"><span>
								<c:choose>
								<c:when test="${pager.startPage > 5}">		
									<a href="?pageNum=${pager.prevPage}">이전</a>&nbsp;&nbsp;
								</c:when>
								<c:otherwise>
									<span>이전</span>&nbsp;&nbsp;
								</c:otherwise>
								</c:choose>
								<c:forEach var="i" begin="${pager.startPage}" end="${pager.endPage}">
                   				<a href="?pageNum=${i}">${i}</a> &nbsp;&nbsp;
                				
                				</c:forEach>  
									<c:choose>
								<c:when test="${pager.endPage > 5}">		
									<a href="?pageNum=${pager.nextPage}">다음</a>&nbsp;&nbsp;
								</c:when>
								<c:otherwise>
									<span>다음</span>&nbsp;&nbsp;
								</c:otherwise>
								</c:choose>
								</span></div>
								</div></div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>

<script type="text/javascript">
	function ds1(idx) {
		document.getElementById("answer_"+idx).classList.toggle('hide');
		/* alert(idx); */
	}
	
	function as1(comment){
		document.getElementById("answerA_"+comment).classList.toggle('hide');
		
	}
	/* $('#wrap').onclick(function(e){
	 if( !$('#questions').has(e.target).length ) $('#questions').hide();
	 }); */
</script>
