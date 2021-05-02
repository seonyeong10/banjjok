<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/loginForm.css'/>" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.2/css/all.css"
/>
</head>
<body>
	<!-- 타이틀 -->
	<div id="topWrapper">
		<a href="javascript:history.back();">
			<span><</span>뒤로가기
		</a>
		<h2>
			Login
		</h2>
	</div>
	<div id="LoginWrapper">
		<div class="description">
			<span class="title">아이디를 모르시나요?</span>
			<span>입력한 연락처로 아이디를 찾을 수 있습니다.</span>
		</div>
		<div class="findId-wrap">
			<c:if test="${dto != null }">
				회원님의 아이디는 
				<div class="findId-area">${dto.userId }</div>
				입니다.
			</c:if>
			<c:if test="${dto == null }">
				가입한 아이디가 없습니다.
			</c:if>
		</div>
		<br />
		<!-- 하단 나비 -->
		<div id="bottomWrapper">
			<ul>
				<li><a href="/banjjok">Home</a></li>
				<li><a href="/banjjok/login">Log in</a></li>
				<li><a href="#">Find Password</a></li>
			</ul>
		</div>
	</div>

	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<!-- 	<script src="js/script.js"></script> -->
	<!-- foot 끝 -->
</body>

</html>