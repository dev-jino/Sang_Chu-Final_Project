<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<style type="text/css">
#info_update_btn{
	background-color: green;
	color: white;
	border-radius: 5px;
	width: 80px;
	height: 30px;}
</style>
</head>
<body>
	<div id="__next">
		<section class="content">
			<div class="item_list_area">
				<h1>회원프로필</h1>
				<div class="breadcrumbs" id="breadcrumbs">
				</div>
				<div class="main_area">
					<div class="main_area_center">
						<div class="main">
							<h2>회원프로필 영역</h2>
							<div class="my_profile_left">
								<div class="my_profile_info">
									<div class="my_profile_image">
										<img src="<c:url value="/img/site/user.png"/>">
									</div>
									<div class="my_profile_nick">${member.nicname }</div>
									<div class="my_profile_shop_created">
									</div>
									<div class="my_profile_pro_review">
									</div>
								</div>
								<div class="my_profile_nav">
									<ul>
										<li><a href="<c:url value="/mypage_list"/>"><span>거래내역</span></a></li>
										<li><a href="<c:url value="/mypage_info_update"/>"><span>회원정보수정</span></a></li>
									</ul>
								</div>
							</div>

							<section class="left_main" id="info_update_left_main"
								style="margin-left: 0;">

								<div class="profile_edit_wrapper">
									<div class="profile_edit_main">
									<form method="post">
										<ul>
											<li>
												<div>닉네임</div>
												<div>
													<input type="text" name="nicname" value="${member.nicname }" class="input_box"  />
												</div>
											</li>
											<li>
												<div>아이디</div>
												<div>
													<div class="profile_userId_value">${member.id }</div>
													<input type="hidden" name="id" value="${member.id }">
												</div>
											</li>
											<li>
												<div>이름</div>
												<div class="certificates_box">
													<div class="profile_userId_value">${member.name }</div>
												</div>
											</li>
											<li>
												<div>휴대폰</div>
												<div>
													<div>
														<input type="text" name="phone" value="${member.phone }" class="input_box" />
													</div>
												</div>

											</li>
											<li>
												<div>계좌번호</div>
												<div>
													<div>
														<input type="text" name="account" value="${member.account }" class="input_box" />
													</div>
												</div>
											</li>
											<li class="profile_password_area profile_password_area_first">
												<div>비밀번호</div>
												<div>
													<div>
														<input type="password" value="${member.password }" class="input_box" />
													</div>
												</div>
											</li>
										</ul>
										<br>
										<br>
										<div class="profile_edit_bye">
											<button class="" type="submit" id="info_update_btn" onclick="updateCheck()">변경</button>
										</div>
										<br><br><br><br>
										<br>
										<br>
									</form>
										<div class="profile_edit_bye">
											<span><a onclick="deleteCheck()">회원탈퇴</a>></span>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
<script type="text/javascript">
function deleteCheck() {
    if(confirm("정말로 상추슈퍼에서 탈퇴하시겠습니까?")==true) {
        location.href="<c:url value="/delete_member"/>";
    } else {
        return;
    }
}

function updateCheck() {
	alert("성공적으로 변경되었습니다.");
}
</script>
</body>
</html>