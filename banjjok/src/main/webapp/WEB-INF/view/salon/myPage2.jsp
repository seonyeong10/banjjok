<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" %>
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>desnForm</title>
<link href="../static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="../static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="../static/css/memberForm.css" rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
</head>
<body>
	<%@ include file="../include/top.jsp" %>
	<div class="member-regist-wrap">
		<div class="title">
			<h2>직원등록</h2>
		</div>
		<form:form action="desnModify" name="frm" id="frm" enctype="multipart/form-data" modelAttribute="desnCommand" 
		method="post" onsubmit="return frmSend();">
			<!-- 보호자 정보 -->
			<div id="member-info">
				<div class="mem-element">
					<p class="element-name">구분</p>
					<span class="element-value">
						살롱
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">직원사진</p>
					<span class="image" >
						<c:set value="${fn:split(list.desnImg,'`') }" var="i" />
						<img src="/salon/designer/upload/${i[1] }" style="width: 100px; height: 100px" id="img"/>
						<button type="button" onclick="imgDelete('${i[1]}', this);" id="delBtn">삭제</button>
					</span>
					<span class="element-value" >
						<input type="file" name="desnImg" id="desnImg" style="display: none;" />
					</span>
					<p class="element-errors">${noImg }</p>
				</div>
				<div class="mem-element">
					<p class="element-name">직급</p>
					<span class="element-value"> 
						<c:if test="${list.desnUse == 1 }">
							원장
						</c:if>
						<c:if test="${list.desnUse == 2 }">
							수석디자이너
						</c:if>
						<c:if test="${list.desnUse == 3 }">
							디자이너
						</c:if>
					</span>
				</div>
				<div class="mem-element">
					<p class="element-name">아이디</p>
					<span class="element-value">
<%-- 						<form:input path="desnId" placeholder="아이디"/> --%>
						${list.desnId }
						<input type="hidden" name="desnId" value="${list.desnId }" />
					</span> 
				</div>
				<div class="mem-element">
					<p class="element-name">비밀번호</p>
					<span class="element-value">
						<input type="password" name="desnPw" placeholder="비밀번호" />
					</span>
					<p class="element-errors">
						<form:errors path="desnPw"/>
						${pwErr }
					</p>
				</div>
				<div class="mem-element">
					<p class="element-name">이름</p>
					<span class="element-value"><form:input path="desnName" placeholder="이름" value="${list.desnName }"/></span>
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
					<span class="element-value">
						<form:input path="desnPh" value="${list.desnPh }" />
					</span>
					<p class="element-errors"><form:errors path="desnPh"/></p>
				</div>
				<div class="mem-element">
					<p class="element-name">정기 휴무일</p>
					<span class="element-value">
						<c:set value="${fn:split(list.desnOff, ',') }" var="off" />
							<input type="checkbox" value="1" name="desnOff" <c:if test="${off[0] == 1 || off[1] == 1}">checked</c:if>/>매주 일요일
							<input type="checkbox" value="2" name="desnOff" <c:if test="${off[0] == 2 || off[1] == 2}">checked</c:if>/>매주 월요일
							<input type="checkbox" value="3" name="desnOff" <c:if test="${off[0] == 3 || off[1] == 3}">checked</c:if>/>매주 화요일
							<input type="checkbox" value="4" name="desnOff" <c:if test="${off[0] == 4 || off[1] == 4}">checked</c:if>/>매주 수요일 <br />
							<input type="checkbox" value="5" name="desnOff" <c:if test="${off[0] == 5 || off[1] == 5}">checked</c:if>/>매주 목요일
							<input type="checkbox" value="6" name="desnOff" <c:if test="${off[0] == 6 || off[1] == 6}">checked</c:if>/>매주 금요일
							<input type="checkbox" value="7" name="desnOff" <c:if test="${off[0] == 7 || off[1] == 7}">checked</c:if>/>매주 토요일
					</span>
					<p class="element-errors">${lengthErr }</p>
				</div>
				<div class="mem-element">
					<p class="element-name">입사일</p>
					<span class="element-value">
						<fmt:formatDate value="${list.desnEnter }" type="date" pattern="yyyy-MM-dd" />
					</span>
				</div>
				<div class="button-wrap">
					<input type="button" value="이전" onclick="javascript:history.back();" />
					<input type="submit" value="수정" /> <input type="button" value="탈퇴"
						onclick="desnDelete();" />
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
// 					alert(result);
					if (result.trim() == "1") {
						$(btn).text('삭제취소');
						$('#desnImg').show();
						$('#img').hide();
					} else {
						$(btn).text('삭제');
						$('#desnImg').hide();
						$('#img').show();
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