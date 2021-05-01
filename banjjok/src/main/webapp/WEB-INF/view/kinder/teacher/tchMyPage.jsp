<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자이너 마이페이지</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<%-- <link href="<c:url value='/static/css/topMenu.css' />" rel="stylesheet" type="text/css" /> --%>
<link href="<c:url value='/static/css/memPage.css' />" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- top -->
	<%@ include file="../../include/top.jsp"%>
	<!-- content -->
	<div class="content">
	<div class="contentSelectWrap">
		<div class="InfoModify">
			<!-- 회원정보 수정 -->
			<h2>회원정보</h2>
			<p>내 정보를 수정하거나 탈퇴할 수 있습니다.</p>
			<a href="/kinder/teacher/myPage/modify" class="modify" >수정</a>
			<a href="#">비밀번호 변경</a>
			<a onclick='del("${authInfo.userId}");'>회원 탈퇴</a>
		</div>
		<div class="orderInfo">
			<!-- 주문조회 -->
			<h2>스케줄</h2>
			<p>나의 예약현황을 조회할 수 있습니다.</p>
			<a onclick="" class="modify">조회</a>
		</div>
		<div class="myInterestInfo">
			<h2>스타일북</h2>
			<p>내가 등록한 스타일을 확인할 수 있습니다.</p>
			<a href="#" class="modify">등록</a>
			<a href="#">조회</a>
		</div>
		</div>
	</div>
	<!-- content 끝 -->
	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved. </footer>
	<!-- foot 끝 -->
	<script type="text/javascript">
		function del(userId){
			if(confirm('정말 탈퇴하시겠습니까?')) {
				location.href='/kinder/teacher/myPage/delete?tId=' + userId;
			}
			return false;
		}
	</script>
</body>
</html>