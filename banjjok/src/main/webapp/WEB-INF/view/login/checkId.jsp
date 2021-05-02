<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/loginForm.css'/>" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.2/css/all.css"
/>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
</head>
<body>
	<!-- 타이틀 -->
	<div id="topWrapper">
		<a href="javascript:history.back();">
			<span><</span>뒤로가기
		</a>
		<h2>
			Login
		</h2>
	</div>
	<div id="LoginWrapper">
		<div class="description">
			<span class="title">비밀번호가 기억나지 않아 답답하셨나요?</span>
			<span>아이디를 입력하시면, 찾을 수 있는 방법을 알려드려요.</span>
		</div>
		<div class="LoginDataWrap">
			<form action="authPh" method="post" name="frm"  onsubmit="return checkId();">
				<div class="idForm">
					<input type="text" name="userId" id="userId" placeholder="아이디를 입력하세요." />
				</div>
<!-- 				<div class="passForm"> -->
<!-- 					<input type="text" name="checkNum" id="checkNum" placeholder="인증번호 입력" /> -->
<!-- 				</div> -->
				<input type="submit" value="다음단계" class="loginButton" />
			</form>
		</div>
		<!-- 하단 나비 -->
		<div id="bottomWrapper">
			<ul>
				<li><a href="/banjjok/signUp">Sign Up</a></li>
				<li><a href="/banjjok/checkPh">Find ID</a></li>
				<li><a href="#">Find Password</a></li>
			</ul>
		</div>
	</div>

	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<!-- foot 끝 -->
	<script type="text/javascript">
		function checkId(){
			var flag = true;
			var id =  document.getElementById('userId').value.trim();
			if(id == "") {
				alert('아이디를 입력해주세요.');
				return false;
			}
			isExist = {
					type : "post"
					, url : "isExist"
					, dataType : "text"
					, data : {
						"userId" : id
					}
					, async : false
					, success : function(result){
						if(result == 0) {
							alert(id + '는 없는 아이디입니다. \n다시 한 번 아이디를 정확히 입력해주세요.');
							flag = false;
						} else {
							flag = true;
						}
					}
					, error : function(){
						alert('ERROR: 다시 시도해주세요.');
						flag = false;
					}
			};
			$.ajax(isExist);
		}
	</script>
</body>

</html>