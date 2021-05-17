<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로그램 등록</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/memberForm.css'/>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
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
			<a href="#">
				<span class="pennant">
					<span class="fas fa-shapes fa-2x"></span>
					&nbsp;&nbsp;프로그램 수정
				</span>
			</a>
		</div>
		<form action="/banjjok/kinder/program/modifyAct" name="frm" id="frm" method="post" enctype="multipart/form-data" >
			<!-- 보호자 정보 -->
			<div id="member-info">
				<div class="mem-element">
					<p class="element-name">프로그램 코드</p>
					<span class="element-value"><input type="text" name="pCode" readonly="readonly" value="${dto.pCode }"/></span>
				</div>
				<div class="mem-element">
					<p class="element-name">카테고리</p>
					<span class="element-value">
					<select name="pCateg" onchange="getTeacher();" id="categori">
							<option>카테고리를 선택하세요.</option>
							<option value="01" <c:if test="${dto.pCateg eq '01' }">selected</c:if> >사회화 테스트</option>
							<foption value="02" <c:if test="${dto.pCateg eq '02' }">selected</c:if> >교육/훈련(단일반)</option>
							<option value="03" <c:if test="${dto.pCateg eq '03' }">selected</c:if> >교육/훈련(종일반)</option>
					</select>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">프로그램 사진</p>
					<span class="image">
						<c:set value="${fn:split(dto.pImg,'`') }" var="img"/>
						<img src="/kinder/upload/${img[1] }" alt="emp face" id="emp-img"/>
					</span>
					<span class="element-value">
						<input type="button" value="삭제" id="delBtn" onclick="imgDelete('${img[1]}',this);"/>
						<input type="file" name="pImg" id="desn-img" style="display:none;"/>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">프로그램 이름</p>
					<span class="element-value"><input type="text" name="pName" value="${dto.pName }"/></span>
				</div>
				<div class="mem-element">
					<p class="element-name">담당자</p>
					<span class="element-value">
					<select name="pTeacher">
							<option>담당자를 선택하세요.</option>
							<c:forEach items="${list }" var="list">
								<option value="${list.tId }" <c:if test="${dto.pTeacher eq list.tId }">selected</c:if> >${list.tName }</option>
							</c:forEach>
					</select>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">기준가격(원)</p>
					<span class="element-value"><input type="text" name="pPrice" value="${dto.pPrice }"/></span>&nbsp;원
				</div>
				<div class="mem-element">
					<p class="element-name">기간</p>
					<span class="element-value">
						시작일  <input type="date" name="pStart" value="${fn:substring(dto.pStart,0,10) }"/>
						종료일  <input type="date" name="pEnd" value="${fn:substring(dto.pEnd,0,10) }"/>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">교육/테스트 대상</p>
					<span class="element-value"> 
						<label class="element-value">
							<input type="radio" name="pTarget" value="small" 
								<c:if test="${dto.pTarget eq 'small' }">checked</c:if>
							/><span>소형견</span>
						</label>
						<label class="element-value">
							<input type="radio" name="pTarget" value="middium"
								<c:if test="${dto.pTarget eq 'middium' }">checked</c:if>
							/><span>중형견</span>
						</label>
						<label class="element-value">
							<input type="radio" name="pTarget" value="big"
								<c:if test="${dto.pTarget eq 'big' }">checked</c:if>
							/><span>대형견</span>
						</label>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">교육 내용</p>
					<span class="element-value"> <textarea name="pContent"
							placeholder="서비스의 내용을 입력하세요.">${dto.pContent }</textarea>
					</span>
				</div>
				<div class="button-wrap">
					<input type="button" value="취소" onclick="cancle();" />
					<input type="submit" value="수정" />
				</div>
			</div>
		</form>
	</div>
	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<script src="<c:url value='/static/js/eduForm.js' />" ></script>
</body>
</html>