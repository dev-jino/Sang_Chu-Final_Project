<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div id="__next">
    <section class="content"><h1>헬로마켓 - 100% 비대면 안전 결제 중고거래 마켓</h1>
        <h2>공지사항</h2>
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
                                    <div class="left_nav_type2_title">헬프센터</div>
                                    <ul class="left_nav_menu">
                                        <li><a href="<%=request.getContextPath()%>/notice"><span>공지사항</span></a></li>
										<li><a href="<%=request.getContextPath()%>/faq"><span>FAQ</span></a></li>
										<li><a class="active" id="scrollMain" href="<%=request.getContextPath()%>/qna"><span>QnA</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <section class="left_main">
                                <div class="comunity_content_title_area_policy">
                                    <img class="comunity_title_img" src="<%=request.getContextPath()%>/img/site/q.png" style="width: 30px;" alt="내용 타이틀 이미지"/>
                                    <span>QnA관리</span>
                                </div>
                                <div class="notice_list_wrapper">
                                    <div class="notice_list">
                                        <div class="questions" onclick="ds()">
                                            <img class="icon_questions" src="<%=request.getContextPath()%>/img/site/q.png"alt="질문 이미지" height="25"/>
                                            <span class="title" >제목</span>
                                            <img class="btn_questions" alt="질문열기" height="8" width="15"
                                                 src="<%=request.getContextPath()%>/img/site/down.png"/>
                                            <span class="timeago">작성일</span>
                                            <div class="answer hide" id="answer" style="appearance: auto">
                                                <img alt="답변" class="icon_answer" height="25" width="25" src="<%=request.getContextPath()%>/img/site/a.png">
                                                <span>답변내용</span>

                                            </div>
                                        </div>
                                        <br>
                                        <div class="write_btn_div">
	                                        <button type="button" onclick="location.href='<%=request.getContextPath()%>/qna/write'">
	                                            문의하기</button>
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
