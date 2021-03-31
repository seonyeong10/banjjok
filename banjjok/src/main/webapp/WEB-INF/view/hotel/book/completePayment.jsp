<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 결제완료</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<%-- <link href="<c:url value='/static/css/reserveForm.css'/>" rel="stylesheet" type="text/css" /> --%>
<!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" /> -->
</head>
<body>
<%@ include file="../../include/hotelTop.jsp"%>
<div class="titleWrap">
	<div class="title">
		<h2>결제가 완료되었습니다.</h2>
	</div>
	<div class="fieldDesc">
		<p><a href="<c:url value='/hotel'/>">홈으로</a></p>
	</div>
	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<!-- foot 끝 -->
</div>
</body>
</html>