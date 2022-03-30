<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
         
         <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
         <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
		
		

<!DOCTYPE html>
<html lang="ko">
<!-- Mirrored from www.hellomarket.com/help/notice.hm by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Feb 2022 13:25:06 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8"/><!-- /Added by HTTrack -->
<head>
    

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

</head>
<body>
<div id="__next">


    <section class="content"><h1>헬로마켓 - 100% 비대면 안전 결제 중고거래 마켓</h1>
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
                                        <li><a class="active" id="scrollMain" href="${pageContext.request.contextPath}/notice"><span>공지사항</span></a></li>
										<li><a href="${pageContext.request.contextPath}/faq"><span>FAQ</span></a></li>
										<li><a href="${pageContext.request.contextPath}/qna"><span>QnA</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            
                            
                            <section class="left_main">
                                <div class="comunity_content_title_area_policy">
                                    <img class="comunity_title_img" src="${pageContext.request.contextPath}/img/site/i.png" alt="내용 타이틀 이미지" style="width: 30px;"/>
                                    <span>공지사항</span>
                                </div>
                                <div class="notice_list_wrapper">
                                
                                
                                
                                    <div class="notice_list">
                                    <c:set var="a" value="<\n>"></c:set>
                                       <c:forEach var="notice" items="${noticeList}" >
                                        <div class="questions">
                                            <img class="icon_questions" src="${pageContext.request.contextPath}/img/site/i.png" alt="질문 이미지" height="25"/>
                                            <span class="title" onclick="ds2('${notice.idx}')">${notice.title}</span>
                                            
                                            <span class="timeago">${fn:substring(notice.regDate,0,10)}</span>
                                            <div class="answer hide"   id="answerN_${notice.idx}"  style="border-bottom: 0px; border-left: 0px;">
                                                <img alt="답변" class="icon_answer" height="25" width="25" src="${pageContext.request.contextPath}/img/site/i.png">
                                                <span style="margin-bottom: 40px;">${fn:replace(notice.content,replaceChar,"<br/>")}</span>
                                            </div>
                                        </div>
                                       
                                         </c:forEach> 
                                    </div>
                                    <div></div>
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


function ds2(idx){
    document.getElementById("answerN_"+idx).classList.toggle('hide'); 
  
}
</script>

</body>
<!-- Mirrored from www.hellomarket.com/help/notice.hm by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Feb 2022 13:25:06 GMT -->




</html>
