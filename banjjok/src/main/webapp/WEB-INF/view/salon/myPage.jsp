<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"
%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원정보 수정</title>
<link href="../static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="../static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="../static/css/memberForm.css" rel="stylesheet"
	type="text/css"
/>
<style type="text/css">
	table td {text-align: center;}
</style>
</head>
<body>
	<%@ include file="../include/top.jsp"%>
	<div class="member-regist-wrap">
		<div class="title">
			<h2>직원등록</h2>
		</div>
		<table border="1">
			<tr>
				<td>구분</td>
				<td></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td></td>
			</tr>
			<tr>
				<td>사진</td>
				<td></td>
			</tr>
			<tr>
				<td>이름</td>
				<td></td>
			</tr>
			<tr>
				<td>직급</td>
				<td></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td></td>
			</tr>
			<tr>
				<td>휴무일</td>
				<td></td>
			</tr>
			<tr>
				<td>입사일</td>
				<td></td>
			</tr>
		</table>
		<div class="button-wrap">
			<input type="button" value="이전" onclick="javascript:history.back();" />
			<input type="submit" value="수정" />
		</div>
	</div>

	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<script src="js/script.js"></script>
	<!-- foot 끝 -->
</body>
</html>