<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/static/css/topMenu.css'/>" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<!-- top -->
	<header>
		<!-- 로고  -->
		<div class="logoArea">
			<a href="<c:url value='/'/>" class="logoImage"
				style="background-image: url('<c:url value="/static/images/soulMate_logo.png"/>');">
			</a>
		</div>
		<!-- 나비(메뉴선택 바)  -->
		<div class="navigationWrap">
			<c:if test="${authInfo.grade ne 'teacher' }">
				<ul class="navigationArea">
					<li><a href="#">Resevation</a></li>
					<li><a href="/banjjok/kinder/program">Program</a></li>
					<li><a href="/banjjok/kinder/teacher">Teacher</a></li>
					<li><a href="#">My Page</a></li>
<!-- 					<li><a href="staffForm.html">Add menu</a></li> -->
					<c:if test="${authInfo.userId != null }">
						<li><a href="/banjjok/logout">Log out</a></li>
					</c:if>
					<c:if test="${authInfo.userId == null }">
						<li><a href="/banjjok/login">Log in</a></li>
					</c:if>
				</ul>
			</c:if>
			<c:if test="${authInfo.grade eq 'teacher' }">
				<ul class="navigationArea">
					<li><a href="/banjjok/kinder/program">Program</a></li>
					<li><a href="/banjjok/kinder/teacher">Teacher</a></li>
					<li><a href="<c:url value='/banjjok/kinder/teacher/myPage'/>">My Page</a></li>
					<c:if test="${authInfo.userId != null }">
						<li><a href="/banjjok/logout">Log out</a></li>
					</c:if>
					<c:if test="${authInfo.userId == null }">
						<li><a href="/banjjok/login">Log in</a></li>
					</c:if>
				</ul>
			</c:if>
		</div>
	</header>
</body>
</html>