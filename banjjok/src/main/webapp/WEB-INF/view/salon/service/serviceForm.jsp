<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 등록</title>
<link href="../static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="../static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="../static/css/memberForm.css" rel="stylesheet"
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
		<form action="#" name="frm" id="frm">
			<!-- 보호자 정보 -->
			<div id="member-info">
				<div class="mem-element">
					<p class="element-name">서비스 코드</p>
					<span class="element-value"><input type="text" name="serviceCode"
						placeholder="서비스 코드(자동생성)" readonly="readonly" /></span>
					<!-- <span class="button"><input type="button" value="중복확인"/></span> -->
				</div>
				<div class="mem-element">
					<p class="element-name">카테고리</p>
					<span class="element-value"> <select name="serviceCateg">
							<option>카테고리를 선택하세요.</option>
							<option value="cut">스타일컷</option>
							<option value="cleanic">클리닉</option>
							<option value="color">염색</option>
					</select>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">서비스 이름</p>
					<span class="element-value"><input type="text"
						name="serviceName" placeholder="서비스의 이름을 입력하세요." /></span>
				</div>
				<div class="mem-element">
					<p class="element-name">기준가격(원)</p>
					<span class="element-value"><input type="text"
						name="serviceFee" placeholder="기준 가격을 입력하세요." /></span> <span
						class="button"><input type="button" value="인증" /></span>
				</div>
				<div class="mem-element">
					<p class="element-name">소요시간</p>
					<span class="element-value"> <select name="serviceTime">
							<option>소요시간을 선택하세요.</option>
							<option value="60">60분</option>
					</select>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">몸무게 추가(옵션)</p>
					<span class="element-value"> <input type="text"
						name="serviceOpt" placeholder="추가금액(원)" />
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">서비스 내용</p>
					<span class="element-value"> <textarea name="serviceDesc"
							placeholder="서비스의 내용을 입력하세요."></textarea>
					</span>
				</div>
				<div class="button-wrap">
					<input type="button" value="취소" onclick="cancle();" />
					<input type="submit" value="등록" />
				</div>
			</div>
		</form>
		<form action="#" method="post">
			<!-- 펫 정보 -->
			<div id="pet-info">
				<div class="mem-element">
					<p class="element-name">펫 이름</p>
					<span class="element-value"><input type="text"
						name="petName" placeholder="펫 이름" /></span>
				</div>
				<div class="mem-element">
					<p class="element-name">품종</p>
					<span class="element-value"><input type="text" name="kind"
						placeholder="품종" /></span>
				</div>
				<div class="mem-element">
					<p class="element-name">몸무게</p>
					<span class="element-value"><input type="text" name="weight"
						placeholder="몸무게" /></span>
				</div>
				<div class="mem-element">
					<p class="element-name">나이</p>
					<span class="element-value"><input type="text" name="age"
						placeholder="나이" /></span>
				</div>
				<div class="mem-element">
					<p class="element-name">성별</p>
					<span class="element-value"> <input type="radio"
						name="gender" value="M" checked="checked" /> 남아 <input
						type="radio" name="gender" value="F" /> 여아
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">중성화 여부</p>
					<span class="element-value"><input type="radio"
						name="isNeutral" value="Y" checked="checked" /> Y <input
						type="radio" name="isNeutral" value="N" /> N</span>
				</div>
				<div class="mem-element">
					<p class="element-name">전자칩 번호</p>
					<span class="element-value"><input type="text"
						name="microNum" placeholder="전자칩 번호" /></span>
				</div>
				<div class="mem-element">
					<p class="element-name">성격이나 버릇</p>
					<span class="element-value"> <textarea name="desc"
							placeholder="성격이나 버릇"></textarea>
					</span>
				</div>
				<div class="button-wrap">
					<input type="button" value="이전"
						onclick="javascript:history.back();" /> <input type="submit"
						value="가입완료" /> <input type="button" value="취소"
						onclick="cancle();" />
				</div>
			</div>
		</form>
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