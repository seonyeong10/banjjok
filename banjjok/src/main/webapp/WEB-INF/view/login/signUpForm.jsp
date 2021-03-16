<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<link href="static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<!-- <link href="static/css/signUpForm.css" rel="stylesheet" type="text/css" /> -->
<link href="static/css/topMenu.css" rel="stylesheet" type="text/css" />
<link href="static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="static/css/memberForm.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
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
		<!-- 나비(메뉴선택 바)  -->
      <div class="navigationWrap">
			<ul class="navigationArea">
				<c:if test="${empty authInfo }">
					<li><a href="login">Log In</a></li>
					<li><a href="signUp">Sign Up</a></li>
				</c:if>
				<c:if test="${!empty authInfo }">
					<li>${authInfo.userId }님 환영합니다.</li>
					<li><a href="/main/logout">Log Out</a></li>
				</c:if>
			</ul>
		</div>
	</header>
	<!-- top 끝 -->
	
<!-- <form action="#" method="post" class="col-xs-12 panel-body-inner"> -->
<!-- <h2>Sign Up</h2> -->
<!-- 회원가입 폼(위치는 login 폴더)........CSS 넣다가 망.. 날려도 돼!!! -->
<!-- 이제..자러가볼게 -->
<!-- <!-- 	회원가입 폼 -->
<!--        <div class="form-group"> -->
<!--          <input type="text" name="user-email" class="form-control account-text-form-1" placeholder="가입 이메일"> -->
<!--        </div> -->
<!--        <div class="form-group"> -->
<!--          <input type="text" name="user-password" class="form-control account-text-form-1" placeholder="비밀번호"> -->
<!--        </div> -->
<!--        <div class="form-group"> -->
<!--          <input type="text" name="user-passwordAgain" class="form-control account-text-form-1" placeholder="비밀번호 확인"> -->
<!--        </div> -->
<!--        <div class="form-group col-xs-6 panel-body-inner-box-1"> -->
<!--          <input type="text" name="user-lastName" class="form-control account-text-form-2" placeholder="성"> -->
<!--        </div> -->
<!--        <div class="form-group col-xs-6 panel-body-inner-box-2"> -->
<!--          <input type="text" name="user-firstName" class="form-control account-text-form-2" placeholder="이름"> -->
<!--        </div> -->
<!--      </form> -->
<!--      <div class="form-group panel-body-inner bottom-padding"> -->
<!--        <button name="btn-register" class="btn btn-success btn-lg btn-block button">가입하기</button> -->
<!--      </div> -->
<!-- 회원가입 폼 끝 -->

    <div class="member-regist-wrap">
      <div class="title">
        <h2>회원가입</h2>
      </div>
      <div class="current-section">
        <!-- 보호자 정보 -->
        <span class="pennant"><span class="fa fa-user fa-2x"></span>&nbsp;보호자 정보</span>
        <!-- 펫 정보 -->
        <span class="pennant-pet"><span class="fa fa-faw fa-2x"></span>&nbsp;펫 정보</span>
      </div>
      <form action="#" name="frm" id="frm">
        <!-- 보호자 정보 -->
        <div id="member-info">
          <div class="mem-element">
            <p class="element-name">아이디</p>
            <span class="element-value"><input type="text" name="memId" placeholder="아이디"/></span>
            <span class="button"><input type="button" value="중복확인"/></span>
          </div>
          <div class="mem-element">
            <p class="element-name">비밀번호</p>
            <span class="element-value"><input type="password" name="memPw" placeholder="비밀번호"/></span>
          </div>
          <div class="mem-element">
            <p class="element-name">비밀번호 확인</p>
            <span class="element-value"><input type="password" name="memPwCon" placeholder="비밀번호 확인"/></span>
          </div>
          <div class="mem-element">
            <p class="element-name">휴대폰 번호</p>
            <span class="element-value"><input type="text" name="memMobile" placeholder="휴대폰 번호"/></span>
            <span class="button"><input type="button" value="인증"/></span>
          </div>
          <div class="mem-element">
            <p class="element-name">이메일</p>
            <span class="element-value"><input type="text" name="memEmail" placeholder="이메일"/></span>
          </div>
          <div class="mem-element">
            <p class="element-name">닉네임</p>
            <span class="element-value"><input type="text" name="nicName" placeholder="닉네임"/></span>
          </div>
          <div class="button-wrap">
            <input type="button" value="이전"/>
            <input type="button" value="다음단계" onclick="nextPage();"/>
          </div>
        </div>
        <!-- 펫 정보 -->
        <div id="pet-info">
          <div class="mem-element">
            <p class="element-name">펫 이름</p>
            <span class="element-value"><input type="text" name="petName" placeholder="펫 이름"/></span>
          </div>
          <div class="mem-element">
            <p class="element-name">품종</p>
            <span class="element-value"><input type="text" name="kind" placeholder="품종"/></span>
          </div>
          <div class="mem-element">
            <p class="element-name">몸무게</p>
            <span class="element-value"><input type="text" name="weight" placeholder="몸무게"/></span>
          </div>
          <div class="mem-element">
            <p class="element-name">나이</p>
            <span class="element-value"><input type="text" name="age" placeholder="나이"/></span>
          </div>
          <div class="mem-element">
            <p class="element-name">성별</p>
            <span class="element-value">
              <input type="radio" name="gender" value="M" checked="checked"/> 남아
              <input type="radio" name="gender" value="F"/> 여아
            </span>
          </div>
          <div class="mem-element">
            <p class="element-name">중성화 여부</p>
            <span class="element-value"><input type="radio" name="isNeutral" value="Y" checked="checked"/> Y
              <input type="radio" name="isNeutral" value="N"/> N</span>
          </div>
          <div class="mem-element">
            <p class="element-name">전자칩 번호</p>
            <span class="element-value"><input type="text" name="microNum" placeholder="전자칩 번호"/></span>
          </div>
          <div class="mem-element">
            <p class="element-name">성격이나 버릇</p>
            <span class="element-value">
              <textarea name="desc" placeholder="성격이나 버릇"></textarea>
              </span>
          </div>
          <div class="button-wrap">
            <input type="button" value="이전" onclick="javascript:history.back();"/>
            <input type="submit" value="가입완료"/>
            <input type="button" value="취소" onclick="cancle();"/>
          </div>
        </div>
      </form>
    </div>
	<!-- foot -->
		<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
<!-- 	<script src="js/script.js"></script> -->
	<!-- foot 끝 -->
	<script type="text/javascript">
	function nextPage() {
		  document.getElementById('member-info').style.display='none';
		  document.getElementById('pet-info').style.display='block';
		  document.getElementsByClassName('pennant-pet')[0].style.color='#333';
		  document.getElementsByClassName('pennant')[0].style.color='#e1e1e1';
		}

		function cancle() {
		  if(confirm('입력한 데이터는 저장되지 않습니다. \n 취소하시겠습니까?')) {
		    location.href='index.html';
		  }
		}

		function init() {
		  document.getElementById('pet-info').style.display='none';
		  document.getElementsByClassName('pennant-pet')[0].style.color='#e1e1e1';
		}

		init();
	</script>
</body>
</html>