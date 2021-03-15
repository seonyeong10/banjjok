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
		<div class="logoArea">
			<a href="<c:url value='/'/>" class="logoImage"
				style="background-image: url('../static/images/soulMate_logo.png');"
			></a>
		</div>
		<!-- 나비(메뉴선택 바)  -->
		<div class="navigationWrap">
			<ul class="navigationArea">
				<li><a href="#">Resevation</a></li>
				<li><a href="#">Designer</a></li>
				<li><a href="#">Review</a></li>
				<li><a href="<c:url value='/salon/myPage'/>">My Page(디자이너)</a></li>
				<li><a href="<c:url value='/service/addService'/>">Add menu</a></li>
				<c:if test="${empty authInfo }">
				<li><a href="<c:url value='/login'/>">Log In</a></li>
				</c:if>
				<c:if test="${!empty authInfo }">
				<li><a href="/main/logout">Log out</a></li>
				</c:if>
			</ul>
		</div>
	</header>
</body>
</html>