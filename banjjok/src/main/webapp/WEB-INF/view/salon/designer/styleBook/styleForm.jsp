<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타일 등록</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/memberForm.css'/>" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
	<%@ include file="../../../include/top.jsp"%>
	<!-- 서비스 메뉴 등록 -->
	<div class="member-regist-wrap">
		<div class="title">
			<h2>Regist</h2>
		</div>
		<div class="current-section">
			<a href="#" > 
				<span class="pennant-pet"><span class="fa fa-ruler fa-2x"></span>&nbsp;스타일 등록</span>
			</a>
		</div>
		<form:form action="addStyleAct" name="frm" id="frm" method="post" modelAttribute="styleCommand" enctype="multipart/form-data">
			<!-- 보호자 정보 -->
			<div id="member-info">
				<div class="mem-element">
					<p class="element-name">카테고리</p>
					<span class="element-value"> <form:select path="styleCateg">
							<option>카테고리를 선택하세요.</option>
							<form:option value="ba">목욕</form:option>
							<form:option value="pa">부분미용</form:option>
							<form:option value="al">전체미용</form:option>
							<form:option value="sp">스포팅</form:option>
							<form:option value="st">스타일컷</form:option>
					</form:select>
					<div class="element-errors"><form:errors path="styleCateg" /> </div>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">스타일 이름</p>
					<span class="element-value"><form:input path="styleName" placeholder="스타일의 이름을 입력하세요." /></span>
					<div class="element-errors"><form:errors path="styleName" /> </div>
				</div>
				<div class="mem-element">
					<p class="element-name">스타일 사진</p>
					<span class="image"><img src="#" alt="picture" id="prev-img"/></span> <span
						class="element-value"
					><input type="file" name="styleImg" id="style-img"/></span>
					<p class="element-errors">${noImg }</p>
				</div>
				<div class="mem-element">
					<p class="element-name">[옵션 1] 추천 털 길이</p>
					<span class="element-value"> 
						<label class="element-value">
<%-- 							<form:radiobutton path="styleLength" value="long" checked="checked"/><span>장모</span> --%>
							<input type="radio" name="styleLength" value="long" /><span>장모</span>
						</label>
						<label class="element-value">
							<input type="radio" name="styleLength" value="short"/><span>단모</span>
						</label>
						<label class="element-value">
							<input type="radio" name="styleLength" value="none" checked="checked"/><span>무관</span>
						</label>
					</span>
					<div class="element-errors"><form:errors path="styleLength" /> </div>
				</div>
				<div class="mem-element">
					<p class="element-name">[옵션 2] 추천 곱슬 정도</p>
					<span class="element-value"> 
						<label class="element-value">
							<input type="radio" name="styleCurly" value="curly" /><span>곱슬</span>
						</label>
						<label class="element-value">
							<input type="radio" name="styleCurly" value="halfCurly"/><span>반곱슬</span> 
						</label>
						<label class="element-value">
							<input type="radio" name="styleCurly" value="straight"/><span>직모</span> 
						</label>
						<label class="element-value">
							<input type="radio" name="styleCurly" value="none" checked="checked" /><span>무관</span>
						</label>	
					</span>
					<div class="element-errors"><form:errors path="styleLength" /> </div>
				</div>
				<div class="mem-element">
					<p class="element-name">스타일 설명</p>
					<span class="element-value"> <form:textarea path="styleDesc"
							placeholder="스타일에 대해 설명해주세요."></form:textarea>
					</span>
					<div class="element-errors"><form:errors path="styleDesc" /> </div>
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
	function readImage(input) {
	    // 인풋 태그에 파일이 있는 경우
	    if(input.files && input.files[0]) {
	        // 이미지 파일인지 검사 (생략)
	        // FileReader 인스턴스 생성
	        const reader = new FileReader();
	        // 이미지가 로드가 된 경우
	        reader.onload = e => {
	            const previewImage = document.getElementById("prev-img");
	            previewImage.src = e.target.result;
	        }
	        // reader가 이미지 읽도록 하기
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	// input file에 change 이벤트 부여
	const inputImage = document.getElementById("style-img");
	inputImage.addEventListener("change", e => {
	    readImage(e.target)
	})
	</script>
</body>
</html>