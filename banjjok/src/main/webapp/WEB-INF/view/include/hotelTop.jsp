<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../static/css/topMenu.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- top -->
	<header>
		<!-- 로고  -->
		<div class="logoAreaH">
			<a href="<c:url value='/'/>" class="logoImageH"
				style="background-image: url('../static/images/soulMate_logo.png');"
			></a>
		</div>
		<!-- 나비(메뉴선택 바)  -->
		<div class="navigationWrap">
			<ul class="navigationArea">
				<li><a href="#">Booking</a></li>
				<li><a href="/hotel/sitterList">Pet Sitter</a></li>
				<li><a href="#">Review</a></li>
				<li><a href="#">Log out</a></li>
			</ul>
		</div>
	</header>
</body>
</html>