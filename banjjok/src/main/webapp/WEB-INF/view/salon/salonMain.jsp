<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>salonMain</title>
<link href="static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="static/css/topMenu.css" rel="stylesheet" type="text/css" />
<link href="static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="static/css/salonInfo.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
	<!-- top -->
	<header>
		<!-- 로고  -->
		<div class="logoArea">
			<a href="main" class="logoImage"
				style="background-image: url('static/images/soulMate_logo.png');"
			></a>
		</div>
		<!-- 나비(메뉴선택 바)  -->
		<div class="navigationWrap">
			<ul class="navigationArea">
				<li><a href="#">Resevation</a></li>
				<li><a href="#">Designer</a></li>
				<li><a href="#">Review</a></li>
				<li><a href="#">My Page</a></li>
				<li><a href="staffForm.html">Add menu</a></li>
				<li><a href="#">Log out</a></li>
			</ul>
		</div>
	</header>
	<!-- top 끝 -->
	<div class="contentWrap">
		<!-- Content -->
		<div class="content">
			<div class="titleWrap">
				<div class="title">
					<h2>Salon</h2>
				</div>
				<div class="fieldDesc">
					<p>서울특별시 서초구</p>
					<p>예약문의 : 02-125-7979</p>
				</div>
			</div>
			<div class="mainImageWrap">
				<img src="#" alt="salonImg1" "/> <img src="#" alt="salonImg2" "/>
			</div>
			<div class="desinerWrap">
				<div class="title">
					<h2>Designer</h2>
				</div>
				<div class="desinerInfoArea">
					<!-- 4명 1줄, 원장부터 직급순 나열 -->
					<div class="desinerInfo">
						<ul>
							<c:forEach items="${list }" var="list">
								<li>
									<c:set value="${fn:split(list.desnImg,'`') }" var="i" />
									<a href=""><img src="/salon/designer/upload/${i[1] }" alt="face" /></a>
									<p>${list.desnName } 
										<c:if test="${list.desnUse.equals('1') }">원장</c:if>
										<c:if test="${list.desnUse.equals('2') }">수석디자이너</c:if>
										<c:if test="${list.desnUse.equals('3') }">디자이너</c:if>
									</p>
								</li>
							</c:forEach>
							<li><a href="designerInfo.html">
									<img src="/static/salon/designer/upload/0fedce04b2f447c58ed07fc5ef97aa62.jpg" alt="face" />
								</a>
								<p>정바름 원장</p></li>
							<li><img src="#" alt="face" />
								<p>정바름 원장</p></li>
							<li><img src="#" alt="face" />
								<p>정바름 원장</p></li>
							<li><img src="#" alt="face" />
								<p>정바름 원장</p></li>
							<li><img src="#" alt="face" />
								<p>정바름 원장</p></li>
							<li><img src="#" alt="face" />
								<p>정바름 원장</p></li>
							<li class="add-designer-button">
								<!-- 디자이너 등록버튼 -->
								<a href="/salon/regist"><span class="fa fa-user-plus fa-3x"></span></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- Content 끝 -->
	</div>

	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<script src="js/script.js"></script>
	<!-- foot 끝 -->
</body>
</html>