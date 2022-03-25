<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div id="__next">
    <section class="content"><h1>헬로마켓 - 100% 비대면 안전 결제 중고거래 마켓</h1>
        <h2>공지사항 리스트</h2>
        <div class="item_list_min">
            <div class="item_list_area inquiery_list_area">
                <div class="breadcrumbs">
                    <ul>
                        <li><a href="<%=request.getContextPath()%>/index.jsp">HOME</a></li>
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
										<li><a href="<%=request.getContextPath()%>/admin_faq"><span>FAQ</span></a></li>
										<li><a class="active"id="scrollMain" href="<%=request.getContextPath()%>/admin_qna" ><span>QnA</span></a></li>
										<li><a href="<%=request.getContextPath()%>/admin_exchange"><span>상추관리</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <section class="left_main">

                                <div class="mail_view"><h1>헬로마켓 - 100% 비대면 안전 결제 중고거래 마켓</h1>
                                    <h2>일반문의 신청 페이지</h2>
                                    <div>Q/A 답글 작성</div>

                                    <form enctype="multipart/form-data">
                                        <table class="inquiry_table">
                                            <tbody>

                                            <tr>
                                                <td class="label">제목</td>
                                                <td class="field"><input type="text" class="" placeholder="제목을 입력해주세요." value=""/></td>
                                            </tr>
                                            <tr>
                                                <td class="field photo_field" colSpan="2" style="" id ="qatext">
                                                    <textarea placeholder="내용 입력" class="textarea" rows="40	" cols="60" style="width=70%"></textarea>
                                                </td>
                                            </tr>


                                            </tbody>
                                        </table>
                                    </form>
                                    <ul class="btn_wrapper btn_wrapper_center" id="btnsub" >
                                        <li>
                                            <div class="btn"id ="qnabtn5">작성완료</div>
                                        </li>
                                    </ul>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>