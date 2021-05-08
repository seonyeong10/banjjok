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
					&nbsp;&nbsp;프로그램 등록
				</span>
			</a>
		</div>
		<form:form action="/banjjok/kinder/program/registAct" name="frm" id="frm" method="post" enctype="multipart/form-data" modelAttribute="programCommand">
			<!-- 보호자 정보 -->
			<div id="member-info">
				<div class="mem-element">
					<p class="element-name">프로그램 코드</p>
					<span class="element-value"><input type="text" name="pCode" placeholder="프로그램 코드(자동생성)" readonly="readonly" value="${pCode }"/></span>
				</div>
				<div class="mem-element">
					<p class="element-name">카테고리</p>
					<span class="element-value">
					<form:select path="pCateg" onchange="getTeacher();" id="categori">
							<option>카테고리를 선택하세요.</option>
							<form:option value="01">사회화 테스트</form:option>
							<form:option value="02">교육/훈련(단일반)</form:option>
							<form:option value="03">교육/훈련(종일반)</form:option>
					</form:select>
					</span>
					<div class="element-errors"><form:errors path="pCateg"/> </div>
				</div>
				<div class="mem-element">
					<p class="element-name">프로그램 사진</p>
					<span class="image">
						<img src="#" alt="emp face" id="emp-img"/>
					</span>
					<span class="element-value">
						<input type="file" name="pImg" id="desn-img"/>
					</span>
					<p class="element-errors"></p>
				</div>
				<div class="mem-element">
					<p class="element-name">프로그램 이름</p>
					<span class="element-value"><form:input path="pName" placeholder="서비스의 이름을 입력하세요." /></span>
					<div class="element-errors"><form:errors path="pName"/> </div>
				</div>
				<div class="mem-element">
					<p class="element-name">담당자</p>
					<span class="element-value">
					<form:select path="pTeacher">
							<option>담당자를 선택하세요.</option>
							<c:forEach items="${list }" var="list">
								<form:option value="${list.tId }">${list.tName }</form:option>
							</c:forEach>
					</form:select>
					</span>
					<div class="element-errors"><form:errors path="pCateg"/> </div>
				</div>
				<div class="mem-element">
					<p class="element-name">기준가격(원)</p>
					<span class="element-value"><form:input path="pPrice" placeholder="기준 가격을 입력하세요." /></span>&nbsp;원
					<div class="element-errors"><form:errors path="pPrice"/> </div>
				</div>
				<div class="mem-element">
					<p class="element-name">기간</p>
					<span class="element-value">
						시작일  <input type="date" name="pStart"/>
						종료일  <input type="date" name="pEnd"/>
					</span>
					<div class="element-errors"><form:errors path="pStart"/><form:errors path="pEnd"/></div>
				</div>
				<div class="mem-element">
					<p class="element-name">교육/테스트 대상</p>
					<span class="element-value"> 
						<label class="element-value">
							<form:radiobutton path="pTarget" value="small" checked="checked"/><span>소형견</span>
						</label>
						<label class="element-value">
							<form:radiobutton path="pTarget" value="middium"/><span>중형견</span>
						</label>
						<label class="element-value">
							<form:radiobutton path="pTarget" value="big"/><span>대형견</span>
						</label>
					</span>
					<div class="element-errors"><form:errors path="pTarget"/></div>
				</div>
				<div class="mem-element">
					<p class="element-name">교육 내용</p>
					<span class="element-value"> <form:textarea path="pContent"
							placeholder="서비스의 내용을 입력하세요."></form:textarea>
					</span>
					<div class="element-errors"><form:errors path="pContent"/> </div>
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
	<script src="<c:url value='/static/js/eduForm.js' />" ></script>
</body>
</html>