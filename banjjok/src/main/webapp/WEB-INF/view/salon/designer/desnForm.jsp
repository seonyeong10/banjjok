<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<%@ include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>desnForm</title>
<link href="../static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="../static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="../static/css/memberForm.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file="../../include/top.jsp" %>
	<div class="member-regist-wrap">
		<div class="title">
			<h2>직원등록</h2>
		</div>
		<form:form action="empRegistAct" name="frm" id="frm" enctype="multipart/form-data" modelAttribute="desnCommand" 
		method="post" onsubmit="return offCheck();">
			<div id="member-info">
				<div class="mem-element">
					<p class="element-name">구분</p>
					<span class="element-value"> <select name="storeCode">
							<option>영역을 선택하세요</option>
							<option value="s">Salon</option>
							<option value="h">Hotel</option>
							<option value="k">Kinder Garden</option>
						</select>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">직원사진</p>
					<span class="image"><img src="#" alt="emp face" id="emp-img"/></span> <span
						class="element-value"
					><input type="file" name="desnImg" id="desn-img"/></span>
					<p class="element-errors">${noImg }</p>
				</div>
				<div class="mem-element">
					<p class="element-name">직급</p>
					<span class="element-value"> 
						<select name="desnUse">
							<option value="">직급을 선택하세요</option>
							<option value="1">원장</option>
							<option value="2">수석디자이너</option>
							<option value="3">디자이너</option>
						</select>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">아이디(사원번호, 자동생성)</p>
					<span class="element-value">
						<input type="text" name="desnId" placeholder="사원번호 자동생성" value="${empNumber }" readonly="readonly"/>
					</span> 
<!-- 					<span class="button"><input type="button" value="중복확인" /></span> -->
<%-- 					<p class="element-errors"><form:errors path="desnId"/></p> --%>
				</div>
				<div class="mem-element">
					<p class="element-name">비밀번호</p>
					<span class="element-value">
						<input type="password" name="desnPw" placeholder="비밀번호" />
					</span>
					<p class="element-errors"><form:errors path="desnPw"/></p>
				</div>
				<div class="mem-element">
					<p class="element-name">비밀번호 확인</p>
					<span class="element-value"><input type="password"
							name="desnPwCon" placeholder="비밀번호 확인"
						/></span>
					<p class="element-errors"><form:errors path="desnPwCon"/></p>
					<p class="element-errors">${pwErr }</p>
				</div>
				<div class="mem-element">
					<p class="element-name">이름</p>
					<span class="element-value"><form:input path="desnName" placeholder="이름"/></span>
					<p class="element-errors"><form:errors path="desnName"/></p>
				</div>
<!-- 				<div class="mem-element"> -->
<!-- 					<p class="element-name">닉네임</p> -->
<!-- 					<span class="element-value"><input type="text" -->
<!-- 							name="nicName" placeholder="닉네임" -->
<!-- 						/></span> -->
<!-- 				</div> -->
				<div class="mem-element">
					<p class="element-name">휴대폰 번호</p>
					<span class="element-value"><form:input path="desnPh" placeholder="휴대폰 번호" /></span>
<!-- 					<span class="button"><input type="button" value="인증" /></span> -->
					<p class="element-errors"><form:errors path="desnPh"/></p>
				</div>
				<div class="mem-element">
					<p class="element-name">정기 휴무일</p>
					<span class="element-value">
<!-- 						<select name="desnOff"> -->
<!-- 							<option>휴무일을 선택하세요.</option> -->
<!-- 							<option value="1">매주 일요일</option> -->
<!-- 							<option value="2">매주 월요일</option> -->
<!-- 							<option value="3">매주 화요일</option> -->
<!-- 							<option value="4">매주 수요일</option> -->
<!-- 							<option value="5">매주 목요일</option> -->
<!-- 							<option value="6">매주 금요일</option> -->
<!-- 							<option value="7">매주 토요일</option> -->
<!-- 						</select> -->
							<input type="checkbox" value="1" name="desnOff" />매주 일요일
							<input type="checkbox" value="2" name="desnOff" />매주 월요일
							<input type="checkbox" value="3" name="desnOff" />매주 화요일
							<input type="checkbox" value="4" name="desnOff" />매주 수요일 <br />
							<input type="checkbox" value="5" name="desnOff" />매주 목요일
							<input type="checkbox" value="6" name="desnOff" />매주 금요일
							<input type="checkbox" value="7" name="desnOff" />매주 토요일
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">입사일</p>
					<span class="element-value">
						<input type="datetime-local" name="desnEnter"/>
					</span>
					<p class="element-errors"><form:errors path="desnEnter"/></p>
				</div>
				<div class="button-wrap">
					<input type="button" value="취소" onclick="cancle();" />
					<input type="submit" value="등록" />
				</div>
			</div>
		</form:form >
	</div>

	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
<!-- 	<script src="js/script.js"></script> -->
	<!-- foot 끝 -->
	<script type="text/javascript">
		function offCheck(){
			const query = 'input[name="desnOff"]:checked';
			const selected = document.querySelectorAll(query);
			const count = selected.length;
			console.log(count);
			if(count != 2) {
				alert('휴무일을 2개 선택해주세요.');
				return false;
			}
		}
		
		function readImage(input) {
		    // 인풋 태그에 파일이 있는 경우
		    if(input.files && input.files[0]) {
		        // 이미지 파일인지 검사 (생략)
		        // FileReader 인스턴스 생성
		        const reader = new FileReader();
		        // 이미지가 로드가 된 경우
		        reader.onload = e => {
		            const previewImage = document.getElementById("emp-img");
		            previewImage.src = e.target.result;
		        }
		        // reader가 이미지 읽도록 하기
		        reader.readAsDataURL(input.files[0]);
		    }
		}
		
		// input file에 change 이벤트 부여
		const inputImage = document.getElementById("desn-img");
		inputImage.addEventListener("change", e => {
		    readImage(e.target)
		})
	</script>
</body>
</html>