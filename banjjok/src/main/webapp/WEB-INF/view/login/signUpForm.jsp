<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<link href="static/css/signUpForm.css" rel="stylesheet" type="text/css" />
<!-- <link href="static/css/topMenu.css" rel="stylesheet" type="text/css" /> -->
<link href="static/css/footer.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<!-- top -->
	<header>
		<!-- 로고  -->
		<div class="logoArea">
			<a href="/" class="logoImage"
				style="background-image: url('static/images/soulMate_logo.png');"
			></a>
		</div>
	</header>
	<!-- top 끝 -->

<form action="#" method="post" class="col-xs-12 panel-body-inner">
<h2>Sign Up</h2>
회원가입 폼(위치는 login 폴더)........CSS 넣다가 망.. 날려도 돼!!!
이제..자러가볼게
<!-- 	회원가입 폼 -->
       <div class="form-group">
         <input type="text" name="user-email" class="form-control account-text-form-1" placeholder="가입 이메일">
       </div>
       <div class="form-group">
         <input type="text" name="user-password" class="form-control account-text-form-1" placeholder="비밀번호">
       </div>
       <div class="form-group">
         <input type="text" name="user-passwordAgain" class="form-control account-text-form-1" placeholder="비밀번호 확인">
       </div>
       <div class="form-group col-xs-6 panel-body-inner-box-1">
         <input type="text" name="user-lastName" class="form-control account-text-form-2" placeholder="성">
       </div>
       <div class="form-group col-xs-6 panel-body-inner-box-2">
         <input type="text" name="user-firstName" class="form-control account-text-form-2" placeholder="이름">
       </div>
     </form>
     <div class="form-group panel-body-inner bottom-padding">
       <button name="btn-register" class="btn btn-success btn-lg btn-block button">가입하기</button>
     </div>
<!-- 회원가입 폼 끝 -->
	<!-- foot -->
		<footer> SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved. </footer>
<!-- 	<script src="js/script.js"></script> -->
	<!-- foot 끝 -->
</body>
</html>