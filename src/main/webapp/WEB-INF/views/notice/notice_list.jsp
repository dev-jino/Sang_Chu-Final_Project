<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
        #answer{
        	width:100%;
        }
        
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
                                        <li><a class="active" id="scrollMain" href="<%=request.getContextPath()%>/notice"><span>공지사항</span></a></li>
										<li><a href="<%=request.getContextPath()%>/faq"><span>FAQ</span></a></li>
										<li><a href="<%=request.getContextPath()%>/qna"><span>QnA</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <section class="left_main">
                                <div class="comunity_content_title_area_policy">
                                    <img class="comunity_title_img" src="<%=request.getContextPath()%>/img/site/i.png" alt="내용 타이틀 이미지" style="width: 30px;"/>
                                    <span>공지사항</span>
                                </div>
                                <div class="notice_list_wrapper">
                                    <div class="notice_list">
                                        <div class="questions" onclick="ds()">
                                            <img class="icon_questions" src="<%=request.getContextPath()%>/img/site/i.png" alt="질문 이미지" height="25"/>
                                            <span class="title" >날씨 공지</span>
                                            <img class="btn_questions" alt="질문열기" height="8" width="15"
                                                 src="<%=request.getContextPath()%>/img/site/down.png" />
                                            <span class="timeago">작성일</span>
                                            <div class="answer hide" id="answer" style="width:'100%'" >
                                                <img alt="답변" class="icon_answer" height="25" width="25" src="<%=request.getContextPath()%>/img/site/i.png">
                                                <span>날씨가 좋을까요 나쁠까요?</span>
                                            </div>
                                        </div>
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



</body>
<!-- Mirrored from www.hellomarket.com/help/notice.hm by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 23 Feb 2022 13:25:06 GMT -->




</html>
