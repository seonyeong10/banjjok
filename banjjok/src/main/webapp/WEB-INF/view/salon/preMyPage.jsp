<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
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
	<%@ include file="../include/top.jsp"%>
	<!-- content -->
	<div class="content">
	<div class="contentSelectWrap">
		<div class="InfoModify">
			<!-- 회원정보 수정 -->
			<h2>회원정보</h2>
			<p>내 정보를 수정하거나 탈퇴할 수 있습니다.</p>
			<a href="<c:url value='/salon/myPage'/>" class="modify" >수정</a>
			<a href="#">비밀번호 변경</a>
			<a onclick='return del("${authInfo.userId}");'>회원 탈퇴</a>
		</div>
<!-- 		<div class="cartInfo"> -->
<!-- 			<!-- 장바구니 -->
<!-- 			<h2>마이펫</h2> -->
<!-- 			<p>등록된 나의 반려견 정보를 확인할 수 있습니다.</p> -->
<%-- 			<a href="<c:url value='/main/myPet'/>" class="modify">내 반쪽</a> --%>
<!-- 		</div> -->
		<div class="orderInfo">
			<!-- 주문조회 -->
			<h2>스케줄</h2>
			<p>나의 예약현황을 조회할 수 있습니다.</p>
			<a onclick="javascript:location.href='/salon/desn/schedule'" class="modify">조회</a>
		</div>
		<div class="myInterestInfo">
			<h2>나의 관심</h2>
			<p>내가 관심등록한 상품을 확인할 수 있습니다.</p>
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
				location.href='/main/delMember?memId=' + userId;
			}
			return false;
		}
	</script>
</body>
</html>