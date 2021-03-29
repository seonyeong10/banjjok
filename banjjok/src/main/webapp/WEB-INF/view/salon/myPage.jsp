<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원정보 수정</title>
<link href="../static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="../static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="../static/css/memberForm.css" rel="stylesheet"
	type="text/css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
<style type="text/css">
table td {
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="../include/top.jsp"%>
	<div class="member-regist-wrap">
		<div class="title">
			<h2>정보수정</h2>
		</div>
		<form:form action="desnModify" method="post" name="frm"
			onsubmit="return frmSend();" modelAttribute="desnCommand"
			enctype="multipart/form-data">
			<table border="1">
				<tr>
					<td>구분</td>
					<td>살롱</td>
				</tr>
				<tr>
					<td>아이디</td>
					<td>
						${list.desnId } <input type="hidden" name="desnId"
							value="${list.desnId }" />
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="desnPw" id="desnPw" />
						<div>
							<form:errors path="desnPw" />
							<p>${pwErr }</p>
						</div>
					</td>
				</tr>
				<tr>
					<td>사진</td>
					<td>
						<c:set value="${fn:split(list.desnImg,'`') }" var="i" />
						<img src="/salon/designer/upload/${i[1] }"
							style="width: 100px; height: 100px" />
						<button type="button" onclick="imgDelete('${i[1]}', this);"
							id="delBtn">삭제</button>
						<br /> <input type="file" name="desnImg" id="desnImg"
							style="display: none;" />
					</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>
						<form:input path="desnName" value="${list.desnName }" />
					</td>
				</tr>
				<tr>
					<td>직급</td>
					<td>
					<c:if test="${list.desnUse == 1 }">
						원장
					</c:if>
					<c:if test="${list.desnUse == 2 }">
						수석디자이너
					</c:if>
					<c:if test="${list.desnUse == 3 }">
						디자이너
					</c:if>
					</td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td>
						<form:input path="desnPh" value="${list.desnPh }" />
					</td>
				</tr>
				<tr>
					<td>휴무일</td>
					<td>
						매주
						<c:forTokens items="${list.desnOff }" delims="," var="off">
							<c:choose>
								<c:when test="${off == 1 }">일요일</c:when>
								<c:when test="${off == 2 }">월요일</c:when>
								<c:when test="${off == 3 }">화요일</c:when>
								<c:when test="${off == 4 }">수요일</c:when>
								<c:when test="${off == 5 }">목요일</c:when>
								<c:when test="${off == 6 }">금요일</c:when>
								<c:when test="${off == 7 }">토요일</c:when>
							</c:choose>
							,
						</c:forTokens>
					</td>
				</tr>
				<tr>
					<td>입사일</td>
					<td>
						<fmt:formatDate value="${list.desnEnter }" type="date"
							pattern="yyyy - MM - dd" />
					</td>
				</tr>
			</table>
			<div class="button-wrap">
				<input type="button" value="이전" onclick="javascript:history.back();" />
				<input type="submit" value="수정" /> <input type="button" value="탈퇴"
					onclick="desnDelete();" />
			</div>
		</form:form>
	</div>

	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<!-- 	<script src="js/script.js"></script> -->
	<!-- foot 끝 -->
	<script type="text/javascript">
		function frmSend() {
			if (document.getElementById('desnPw').value.trim() == "") {
				alert('비밀번호를 입력하세요.');
				document.getElementById('desnPw').focus();
				return false;
			}
		}

		function desnDelete() {
			if (confirm('정말 탈퇴하시겠습니까?')) {
				document.frm.action = "desnDel";
				frm.submit();
			}
		}

		// 이미지 삭제
		function imgDelete(imgFile, btn) {
			// 			location.href = "imgDel?imgFile=" + imgFile;
			del = {
				type : "post",
				url : "imgDel",
				dataType : "text",
				data : {
					"imgFile" : imgFile
				},
				success : function(result) {
					alert(result);
					if (result.trim() == "1") {
						$(btn).text('삭제취소');
						$('#desnImg').show();
					} else {
						$(btn).text('삭제');
						$('#desnImg').hide();
					}
				},
				error : function() {
					alert('에러');
					return;
				}
			};
			$.ajax(del);
		}
	</script>
</body>
</html>