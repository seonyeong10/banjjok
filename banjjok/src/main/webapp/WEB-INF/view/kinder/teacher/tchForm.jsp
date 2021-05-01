<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<%@ include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>desnForm</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/memberForm.css'/>" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file="../../include/kgTop.jsp" %>
	<div class="member-regist-wrap">
		<div class="title">
			<h2>직원등록</h2>
		</div>
		<form:form action="/kinder/teacher/enrollAct" name="frm" id="frm" enctype="multipart/form-data" modelAttribute="teacherCommand" 
		method="post" onsubmit="">
			<div id="member-info">
				<div class="mem-element">
					<p class="element-name">구분</p>
					<span class="element-value"> <select name="shopCode">
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
					><input type="file" name="tPhoto" id="desn-img"/></span>
					<p class="element-errors">${valid_tPhoto }</p>
				</div>
				<div class="mem-element">
					<p class="element-name">직급/구분</p>
					<span class="element-value"> 
						<select name="tState">
							<option >직급을 선택하세요</option>
							<option value="01">Socialization</option>
							<option value="02">One Day</option>
							<option value="03">All Day</option>
							<option value="10">Incumbent</option>
							<option value="20">Maternity Leave</option>
							<option value="30">Paternity Leave</option>
							<option value="40">Retire</option>
						</select>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">영역</p>
					<span class="element-value">
						<select class="selection" name="cCode">
							<optgroup label="SOCIALIZATION TESTING">
							<option value="0100-0001">사회화테스트A(소형견)</option>
							<option value="0100-0002">사회화테스트B(소형견)</option>
							<option value="0200-0001">사회화테스트A(중형견)</option>
							<option value="0200-0002">사회화테스트B(중형견)</option>
							<option value="0300-0001">사회화테스트A(대형견)</option>
							<option value="0300-0002">사회화테스트B(대형견)</option>
							</optgroup>
							<optgroup label="KINDERGARTEN SMALL-SIZED DOGS">
							<option value="1100-1001">단일 A반</option>
							<option value="1100-1002">단일 B반</option>
							<option value="1100-1003">종일 A반</option>
							<option value="1100-1004">종일 B반</option>
							<option value="1200-1001">단일 C반</option>
							<option value="1200-1002">단일 D반</option>
							<option value="1200-1003">종일 C반</option>
							<option value="1200-1004">종일 D반</option>
<!-- 							<option value="1300-1001">단일 E반</option> -->
<!-- 							<option value="1300-1002">단일 F반</option> -->
<!-- 							<option value="1300-1003">1300-1003</option> -->
<!-- 							<option value="1300-1004">1300-1004</option> -->
							</optgroup>
							<optgroup label="KINDERGARTEN MEDIUM-SIZED DOGS">
							<option value="2100-2001">단일 A반</option>
							<option value="2100-2002">단일 B반</option>
							<option value="2100-2003">종일 A반</option>
							<option value="2100-2004">종일 B반</option>
							<option value="2200-2001">단일 C반</option>
							<option value="2200-2002">단일 D반</option>
							<option value="2200-2003">종일 C반</option>
							<option value="2200-2004">종일 D반</option>
<!-- 							<option value="2300-2001">2300-2001</option> -->
<!-- 							<option value="2300-2002">2300-2002</option> -->
<!-- 							<option value="2300-2003">2300-2003</option> -->
<!-- 							<option value="2300-2004">2300-2004</option> -->
							</optgroup>
							<optgroup label="KINDERGARTEN LARGE-SIZED DOGS">
							<option value="3100-3001">단일 A반</option>
							<option value="3100-3002">단일 B반</option>
							<option value="3100-3003">종일 A반</option>
							<option value="3100-3004">종일 B반</option>
							<option value="3200-3001">단일 C반</option>
							<option value="3200-3002">단일 D반</option>
							<option value="3200-3003">종일 C반</option>
							<option value="3200-3004">종일 D반</option>
<!-- 							<option value="3300-3001">3300-3001</option> -->
<!-- 							<option value="3300-3002">3300-3002</option> -->
<!-- 							<option value="3300-3003">3300-3003</option> -->
<!-- 							<option value="3300-3004">3300-3004</option> -->
							</optgroup>
						</select>
				</div>
				<div class="mem-element">
					<p class="element-name">아이디(사원번호, 자동생성)</p>
					<span class="element-value">
						<input type="text" name="tId" placeholder="사원번호 자동생성" value="${empNumber }" readonly="readonly"/>
					</span> 
				</div>
				<div class="mem-element">
					<p class="element-name">비밀번호</p>
					<span class="element-value">
						<input type="password" name="tPw" placeholder="비밀번호" />
					</span>
					<p class="element-errors"><form:errors path="tPw"/></p>
				</div>
				<div class="mem-element">
					<p class="element-name">비밀번호 확인</p>
					<span class="element-value"><input type="password"
							name="tPwCon" placeholder="비밀번호 확인"
						/></span>
					<p class="element-errors"><form:errors path="tPwCon"/></p>
					<p class="element-errors">${valid_tPwCon }</p>
				</div>
				<div class="mem-element">
					<p class="element-name">이름</p>
					<span class="element-value"><form:input path="tName" placeholder="이름"/></span>
					<p class="element-errors"><form:errors path="tName"/></p>
				</div>
<!-- 				<div class="mem-element"> -->
<!-- 					<p class="element-name">닉네임</p> -->
<!-- 					<span class="element-value"><input type="text" -->
<!-- 							name="t_nic" placeholder="닉네임" -->
<!-- 						/></span> -->
<!-- 				</div> -->
				<div class="mem-element">
					<p class="element-name">휴대폰 번호</p>
					<span class="element-value"><form:input path="tPh" placeholder="휴대폰 번호" /></span>
					<p class="element-errors"><form:errors path="tPh"/></p>
				</div>
				<div class="mem-element">
					<p class="element-name">이메일</p>
					<span class="element-value"><form:input path="tEmail" placeholder="이메일" /></span>
					<p class="element-errors"><form:errors path="tEmail"/></p>
				</div>
				<div class="mem-element">
					<p class="element-name">정기 휴무일</p>
					<span class="element-value">
						<select name="tDuty">
							<option>휴무일을 선택하세요.</option>
							<option value="1">매주 일요일</option>
							<option value="2">매주 월요일</option>
							<option value="3">매주 화요일</option>
							<option value="4">매주 수요일</option>
							<option value="5">매주 목요일</option>
							<option value="6">매주 금요일</option>
							<option value="7">매주 토요일</option>
						</select>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">입사일</p>
					<span class="element-value">
						<input type="datetime-local" name="tJoin"/>
					</span>
					<p class="element-errors"><form:errors path="tJoin"/></p>
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