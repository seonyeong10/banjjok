<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/reserveForm.css'/>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
<style type="text/css">
	.selectedServiceArea li {margin-bottom: 15px;}
	.selectedServiceArea li:last-child {margin-bottom: 0;}
</style>
</head>
<body>
<%@ include file="../../include/top.jsp"%>
	<div class="contentWrap">
		<!-- Content -->
		<div class="content">
			<div class="titleWrap">
				<div class="title">
					<h2>결제하기</h2>
				</div>
				<div class="fieldDesc">
					<!-- <p>서비스 메뉴 등록</p> -->
				</div>
			</div>
			<form action="pay" method="post" name="frm" >
				<input type="hidden" name="bCode" value="${info.bCode }"/>
				<input type="hidden" name="bLDate" value="${info.bLDate }"/>
				<input type="hidden" name="bLTime" value="${info.bLTime }"/>
				<input type="hidden" name="pCode" value="${info.pCode }"/>
				<input type="hidden" name="bLTester" value="${info.bLTester }"/>
				<input type="hidden" name="payAmount" value="${info.pPrice }"/>
			<div class="selectedServiceArea">
				<!-- 예약 서비스 -->
				<div class="select-title">요청사항</div>
				<textarea name="bRequest" placeholder="요청사항을 입력해주세요."></textarea>
			</div>
			<div class="selectedServiceArea">
				<!-- 예약 서비스 -->
				<div class="select-title">예약정보</div>
				<ul>
					<li><span class="select-menu-name">예약번호</span>${info.bCode }</li>
					<li><span >선택메뉴</span>${info.pName }</li>
					<li><span >담당</span>${info.tName }</li>
					<li><span >회원이름</span>${authInfo.userName }</li>
					<li><span >펫 이름</span>${info.petName }</li>
					<fmt:parseDate value="${info.bLDate }" pattern="yyyy-MM-dd" var="date"/>
					<li><span >시간/일자</span><fmt:formatDate value="${date }" pattern="yyyy년 MM월 dd일 "/>${bLTime }  </li>
				</ul>
			</div>
			<div class="selectedServiceArea">
				<!-- 결제정보 입력 -->
				<div class="select-title">결제정보</div>
				<ul>
					<li><span class="select-menu-price">메뉴가격</span><fmt:formatNumber value="${info.pPrice }" pattern="#,### 원" /> </li>
					<li><span >총 결제금액</span><fmt:formatNumber value="${info.pPrice }" pattern="#,### 원" /></li> 
					<li><span >결제방법</span><input type="radio" name="payWay" checked="checked" value='card'/>카드</li>
				</ul>
			</div>
			<div class="btn-wrap">
				<!-- 예약하기 -->
				<div class="price-area">
					<span>총 결제금액</span>
					<span class="price">
						<fmt:formatNumber value="${info.pPrice }" pattern="#,###" />원
					</span>
				</div>
				<div class="btn-area">
					<input type="submit" value="결제하기"/>
					<input type="button" value="취소하기" onclick="cancle('${info.bCode}');" class="cancle"/>
				</div>
			</div>
		</form>
		</div>
		</div>
		<!-- Content 끝 -->

		<!-- foot -->
		<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
			Rights reserved. </footer>
<!-- 		<script src="../../static/js/salonReserve.js"></script> -->
		<script type="text/javascript">
			function cancle(reservCode){
// 				location.href='/salon/menu/cancle?reservCode=' + reservCode;
			}
		</script>
		<!-- foot 끝 -->
</body>
</html>