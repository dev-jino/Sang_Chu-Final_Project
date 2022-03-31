<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
		  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
         <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
										<li><a class="active"id="scrollMain" href="${pageContext.request.contextPath}/admin_product" ><span>상품관리</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_notice"><span>공지사항</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_faq"><span>FAQ</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_qna" ><span>QnA</span></a></li>
										<li><a href="${pageContext.request.contextPath}/admin_exchange"><span>상추관리</span></a></li>
									</ul>
								</div>
							</div>
							<section class="left_main">
								<div class="comunity_content_title_area_policy">
									<img class="comunity_title_img" src="${pageContext.request.contextPath}/img/site/cart.png" alt="내용 타이틀 이미지" style="width: 30px;"/>
									<span>상품관리</span>
								</div>
								<br>
								<div class="member_table">
								<form name ="adForm">
									<table class="faq_list_table">
										<thead>
										<tr>
											<th class="faq_list_th">상품번호</th>
											<th class="faq_list_th">상품이름</th>
											<th class="faq_list_th">상품사진</th>
											<th class="faq_list_th">판매자</th>
											<th class="faq_list_th">판매시작일</th>
											<th class="faq_list_th">상태</th>
										</tr>
										</thead>
										
										<%-- <c:if test="${ }"></c:if> --%>
										<tbody>
										 <c:forEach var="product" items="${productListAdmin}" >
										<tr>
											<td class="faq_list_td" width="15%">${product.idx}</td>
											<td class="faq_list_td" width="15%"><a href="${pageContext.request.contextPath}/product_detail?idx=${product.idx}">${product.title}</a></td>
											<td class="faq_list_td" width="40%">
												<a href="${pageContext.request.contextPath}/product_detail?idx=${product.idx}">
												<img id="admin_product_img" src="${pageContext.request.contextPath}/img/site/${product.img}">
												</a>
											</td>
											<td class="faq_list_td" width="10%">${product.memberId }</td>
											<td class="faq_list_td" width="13%">${fn:substring(product.regDate,0,10)}</td>
											<td class="faq_list_td" width="7%">
											
											
												<select name="status" onchange="sale(value,${product.idx})">
													<option value="1" <c:if test='${product.status eq 1}'>selected="selected"</c:if>>판매중</option>
													<option value="2"<c:if test='${product.status eq 2}'>selected="selected"</c:if>>판매완료</option>
													<option value="9"<c:if test='${product.status eq 9}'>selected="selected"</c:if>>판매중단</option>
												</select>
												
											</td>
										</tr>
										</c:forEach>
									</tbody>
									
								</table>
								</form>
							</div>
							<br>
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

								
								
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>


<script type="text/javascript">
	function sale(status,idx){
		/* if(status==1){
			adForm.method="get";
			adForm.action="${pageContext.request.contextPath}/admin_product_add?idx="+idx+"&status="+status;
			adForm.submit();
		}else if(status=2){
			adForm.method="get";
			adForm.action="${pageContext.request.contextPath}/admin_product_add?idx="+idx+"&status="+status;
			adForm.submit();
		}else{
		} */
			//alert("status ="+status+"idx ="+idx);
			// alert("idx = "+idx+"status="+status);
			/* adForm.method="get";
			adForm.action="${pageContext.request.contextPath}/admin_product_add
			adForm.submit();   */
			location.href="${pageContext.request.contextPath}/admin_product_add?idx="+idx+"&status="+status;
		
	}
</script>