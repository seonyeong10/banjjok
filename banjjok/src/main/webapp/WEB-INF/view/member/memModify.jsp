<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 전 비밀번호 확인</title>
<link href="../static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="../static/css/topMenu.css" rel="stylesheet" type="text/css" />
<link href="../static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="../static/css/memPage.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- top -->
	<header>
		<!-- 로고  -->
		<div class="logoArea">
			<a href="/" class="logoImage"
				style="background-image: url('../static/images/soulMate_logo.png');"></a>
		</div>
		<!-- 나비(메뉴선택 바)  -->
		<div class="navigationWrap">
			<ul class="navigationArea">
				<c:if test="${empty authInfo }">
					<li><a href="<c:url value='/login'/>">Log In</a></li>
					<li><a href="signUp">Sign Up</a></li>
				</c:if>
				<c:if test="${!empty authInfo }">
					<li>${authInfo.userId }님환영합니다.</li>
					<li><a href="/main/myPage">마이페이지</a></li>
					<li><a href="/main/logout">Log Out</a></li>
				</c:if>
			</ul>
		</div>
	</header>
	<!-- top 끝 -->
	<!-- content -->
	<div class="content">
		<form action="modifyAct" method="post" name="frm">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="memId" value="${authInfo.userId }" readonly="readonly"/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="memPw"/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="memName"/></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td>연락처</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="memEmail"/></td>
				</tr>
				<tr>
					<td>가입일</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td><input type="text" name="nickName"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수정"/>
						<input type="button" value="취소" onclick="javascript:location.href='<c:url value="/main/myPage"/>'"/>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<!-- content 끝 -->
	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved. </footer>
	<!-- foot 끝 -->
</body>
</html>