<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 등록</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/memberForm.css'/>" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
	<%@ include file="../../include/top.jsp"%>
	<!-- 서비스 메뉴 등록 -->
	<div class="member-regist-wrap">
		<div class="title">
			<h2>Regist</h2>
		</div>
		<div class="current-section">
			<!-- 서비스 등록 페이지 이동 -->
			<a href="#"> <span class="pennant"><span
					class="fa fa-hand-holding-heart fa-2x"></span>&nbsp;서비스 등록</span>
			</a>
			<!-- 스타일 등록 페이지 이동 -->
<!-- 			<a href="#" onclick="nextPage();">  -->
<!-- 				<span class="pennant-pet"><span class="fa fa-ruler fa-2x"></span>&nbsp;스타일 등록</span> -->
<!-- 			</a> -->
			<a href="#" > 
				<span class="pennant-pet"><span class="fa fa-ruler fa-2x"></span>&nbsp;스타일 등록</span>
			</a>
		</div>
		<form:form action="menuRegist" name="frm" id="frm" method="post" modelAttribute="salonServCommand">
			<!-- 보호자 정보 -->
			<div id="member-info">
				<div class="mem-element">
					<p class="element-name">서비스 코드</p>
					<span class="element-value"><input type="text" name="serviceCode" placeholder="서비스 코드(자동생성)" readonly="readonly" value="${serviceCode }"/></span>
					<span class="button"><input type="button" value="중복확인"/></span>
				</div>
				<div class="mem-element">
					<p class="element-name">카테고리</p>
					<span class="element-value"> <form:select path="serviceCateg">
							<option>카테고리를 선택하세요.</option>
							<form:option value="ba">목욕</form:option>
							<form:option value="pa">부분미용</form:option>
							<form:option value="al">전체미용</form:option>
							<form:option value="sp">스포팅</form:option>
							<form:option value="st">스타일컷</form:option>
					</form:select>
					<div class="element-errors"><form:errors path="serviceCateg" /> </div>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">서비스 이름</p>
					<span class="element-value"><form:input path="serviceName" placeholder="서비스의 이름을 입력하세요." /></span>
					<div class="element-errors"><form:errors path="serviceName" /> </div>
				</div>
				<div class="mem-element">
					<p class="element-name">기준가격(원)</p>
					<span class="element-value"><form:input path="serviceFee" placeholder="기준 가격을 입력하세요." /></span>&nbsp;원
				</div>
				<div class="mem-element">
					<p class="element-name">소요시간</p>
					<span class="element-value"> <select name="serviceTime">
							<option>소요시간을 선택하세요.</option>
							<option value="60">60분</option>
					</select>
					</span>
					<div class="element-errors"><form:errors path="serviceTime" /> </div>
				</div>
				<div class="mem-element">
					<p class="element-name">시술대상</p>
					<span class="element-value"> 
						<form:radiobutton path="serviceTarget" value="small" checked="checked"/> 소형견
						<form:radiobutton path="serviceTarget" value="middle"/> 중형견
						<form:radiobutton path="serviceTarget" value="big"/> 대형견
					</span>
					<div class="element-errors"><form:errors path="serviceTarget" /> </div>
				</div>
				<div class="mem-element">
					<p class="element-name">몸무게 추가(기준 몸무게 : 4kg)</p>
					<span class="element-value"> 
						<form:input path="serviceOpt" placeholder="추가금액(원)" />&nbsp;원
					</span>
					<div class="element-errors"><form:errors path="serviceOpt" /> </div>
				</div>
				<div class="mem-element">
					<p class="element-name">서비스 내용</p>
					<span class="element-value"> <form:textarea path="serviceDesc"
							placeholder="서비스의 내용을 입력하세요."></form:textarea>
					</span>
					<div class="element-errors"><form:errors path="serviceDesc" /> </div>
				</div>
				<div class="button-wrap">
					<input type="button" value="취소" onclick="cancle();" />
					<input type="submit" value="등록" />
				</div>
			</div>
		</form:form>
	</div>
	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<script type="text/javascript">
		function nextPage() {
			document.getElementById('member-info').style.display = 'none';
			document.getElementById('pet-info').style.display = 'block';
			document.getElementsByClassName('pennant-pet')[0].style.color = '#333';
			document.getElementsByClassName('pennant')[0].style.color = '#e1e1e1';
		}

		function cancle() {
			if (confirm('입력한 데이터는 저장되지 않습니다. \n 취소하시겠습니까?')) {
				location.href = 'index.html';
			}
		}

		function init() {
			document.getElementById('pet-info').style.display = 'none';
			document.getElementsByClassName('pennant-pet')[0].style.color = '#e1e1e1';
		}

		init();
	</script>
</body>
</html>