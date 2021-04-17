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
			<form action="payment" method="post" name="frm" >
				<input type="hidden" name="serviceCode" value="${info.serviceCode }"/>
				<input type="hidden" name="reservCode" value="${info.reservCode }"/>
				<input type="hidden" name="reservDate" value="${info.reservDate }"/>
				<input type="hidden" name="reservTime" value="${info.reservTime }"/>
				<input type="hidden" name="reservDesc" value="${info.reservDesc }"/>
				<input type="hidden" name="totalFee" value="${info.serviceFee + info.optFee }"/>
			<div class="selectedServiceArea">
				<!-- 예약 서비스 -->
				<div class="select-title">예약정보</div>
				<ul>
					<li><span class="select-menu-name">선택메뉴</span>${info.serviceName }</li>
					<li><span >담당</span>${info.desnName }</li>
					<li><span >회원이름</span>${info.memName }</li>
					<li><span >펫 이름</span>${info.petName }</li>
					<li><span >시간/일자</span><fmt:formatDate value="${info.reservDate }" pattern="yyyy년 MM월 dd일 a HH:mm"/>  </li>
				</ul>
			</div>
			<div class="selectedServiceArea">
				<!-- 결제정보 입력 -->
				<div class="select-title">결제정보</div>
				<ul>
					<li><span class="select-menu-price">메뉴가격</span><fmt:formatNumber value="${info.serviceFee }" pattern="#,### 원" /> </li>
					<li><span class="select-menu-price">추가금액</span><fmt:formatNumber value="${info.optFee }" pattern="#,### 원" />
					</li>
					<li><span >총 결제금액</span><fmt:formatNumber value="${info.serviceFee + info.optFee }" pattern="#,### 원" /></li> 
					<li><span >결제방법</span><input type="radio" name="payMethod" checked="checked" value='card'/>카드</li>
				</ul>
			</div>
			<div class="btn-wrap">
				<!-- 예약하기 -->
				<div class="price-area">
					<span>총 결제금액</span>
					<span class="price">
						<fmt:formatNumber value="${info.serviceFee + info.optFee }" pattern="#,###" />원
					</span>
				</div>
				<div class="btn-area">
					<input type="submit" value="결제하기"/>
					<input type="button" value="취소하기" onclick="cancle('${info.reservCode}');" class="cancle"/>
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
				location.href='/salon/menu/cancle?reservCode=' + reservCode;
			}
		</script>
		<!-- foot 끝 -->
</body>
</html>