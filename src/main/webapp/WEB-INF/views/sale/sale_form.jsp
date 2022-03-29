<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="__next">
	<section class="content">
		<h1>상추슈퍼 - 중고거래는 상추슈퍼~!</h1>
		<h2>상품 등록 페이지</h2>
		<div class="main_area">
			<div class="main_area_center">
				<div class="main">
					<div class="breadcrumbs">
						<ul>
							<li><a href="<%=request.getContextPath()%>/">HOME</a></li>
							<li>&gt; 상품 등록</li>
						</ul>
					</div>
					<div class="regist_top">
						<div class="regist_box_top">
							<div>상품 등록</div>
						</div>
					</div>
					<form method="post" enctype="multipart/form-data" action="<%=request.getContextPath()%>/sale" id="saleForm">
						<input type="hidden" name="memberId" value="${loginMember.id }">
						<div class="regist_box">
							<div class="description">
								<dl class="regist_image_dl" id="images_box">
									<dt>
										<label style="color: rgb(0, 0, 0);">상품사진</label>
									</dt>
									<dd>
										<ul class="image_list">
											<li>
												<input id="item-input" type="file" name="imgFile" style="display: none"/>
												<div class="up_img_box">
													<label for="item-input">
														<img src="img/site/cam.png" id="item_img" class="item_img" alt="상품 등록 이미지">
													</label>
												</div>
											</li>
											<li>
												<input id="item-input1" type="file" name="imgFile" style="display: none"/>
												<div class="up_img_box">
													<label for="item-input1">
														<img src="img/site/cam.png" id="item_img1" class="item_img" alt="상품 등록 이미지">
													</label>
												</div>
											</li>
											<li>
												<input id="item-input2" type="file" name="imgFile" style="display: none"/>
												<div class="up_img_box">
													<label for="item-input2">
														<img src="img/site/cam.png" id="item_img2" class="item_img" alt="상품 등록 이미지">
													</label>
												</div>
											</li>
											<li>
												<input id="item-input3" type="file" name="imgFile" style="display: none"/>
												<div class="up_img_box">
													<label for="item-input3">
														<img src="img/site/cam.png" id="item_img3" class="item_img" alt="상품 등록 이미지">
													</label>
												</div>
											</li>
											<li>
												<input id="item-input4" type="file" name="imgFile" style="display: none"/>
												<div class="up_img_box">
													<label for="item-input4">
														<img src="img/site/cam.png" id="item_img4" class="item_img" alt="상품 등록 이미지">
													</label>
												</div>
											</li>
											<li>
												<input id="item-input5" type="file" name="imgFile" style="display: none"/>
												<div class="up_img_box">
													<label for="item-input5">
														<img src="img/site/cam.png" id="item_img5" class="item_img" alt="상품 등록 이미지">
													</label>
												</div>
											</li>
										</ul>
										<div class="up_img_label">대표이미지</div>
									</dd>
								</dl>
								<dl id="title">
									<dt>
										<label style="color: rgb(0, 0, 0);">상품제목</label>
									</dt>
									<dd>
										<input type="text" name="title" class="title_input"
											placeholder="상품 제목을 입력해주세요." value="">
										<ul class="item_recommend_box"></ul>
									</dd>
								</dl>
								<dl id="category">
									<dt>
										<label style="color: rgb(0, 0, 0);">카테고리</label>
									</dt>
									<dd>
										<div class="item_select_box">
											<select name="category1">
												<option value="" hidden="">카테고리</option>
												<option value="가구·가전">가구/가전</option>
												<option value="생활·식품">생활/식품</option>
												<option value="게임·취미">게임/취미</option>
												<option value="의류·잡화">의류/잡화</option>
												<option value="기타">기타</option>
											</select>
										</div>
										<div class="item_select_box item_select_margin">
											<select name="category2">
												<option value="" hidden="">하위 카테고리</option>
												<option value="기타">기타</option>
											</select>
										</div>
									</dd>
								</dl>
								<dl class="sell_method_box">
									<dt>
										<label id="price" style="color: rgb(0, 0, 0);">상품가격</label>
									</dt>
									<dd>
										<div class="box_sell_method box_area">
											<div class="box_price">
												<input type="text" name="price" placeholder="가격을 입력해주세요."
													value=""
													style="width: 90%; max-width: 280px; height: 38px;"><span
													class="input_span_text">원</span>
											</div>
										</div>
									</dd>
								</dl>
								<dl id="content">
									<dt>
										<label style="color: rgb(0, 0, 0);">상품설명</label>
									</dt>
									<dd>
										<textarea rows="5" class="introduce" name="content"
											placeholder="상품 설명을 입력해주세요."></textarea>
									</dd>
								</dl>
								<dl>
									<dt>
										<label>상품상태</label>
									</dt>
									<dd>
										<ul class="item_status_list">
											<li class="item_status"><div class="text_wrapper click">중고</div></li>
										</ul>
									</dd>
								</dl>
								<dl id="mainDiv">
									<dt>
										<label>거래방법</label>
									</dt>
									<dd>
										<div class="hellopay_box_area">
											<ul class="checkbox checkbox_horizontal ">
												<li class="lastBtn isChecked ">
													<input type="checkbox" id="isDirectDeal_hellopay" name="hellopay" readonly="" checked="">
														<label for="isDirectDeal_hellopay"><div class="circle left"></div></label>
												<div class="checkbox_label circle ">상추결제</div></li>
											</ul>
										</div>
										<div class="notice_text_box ">
											<div class="notice_text">
												<span>
												100% 대면 직거래 중고마켓! <br> 상추슈퍼는 안전결제 상추결제 거래만 가능합니다.
												</span>
											</div>
										</div>
									</dd>
								</dl>
							</div>
						</div>
					</form>
					<div class="item_submit_box">
						<div class="item_area_submit_box">
							<button class="btn_item_submit" type="submit" form="saleForm">상품등록 완료</button>
							<a href="<%=request.getContextPath()%>/"><button class="btn_item_cancel" type="button">취소</button></a>
						</div>
					</div>
					<br>
				</div>
			</div>
		</div>
	</section>
</div>