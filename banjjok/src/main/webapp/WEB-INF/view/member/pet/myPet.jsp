<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이펫</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/topMenu.css' />" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/myPet.css' />" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
</head>
<body>
  <!-- top -->
     <header>
      <!-- 로고  -->
      <div class="logoArea">
        <a href="/" class="logoImage" style="background-image: url('<c:url value="/static/images/soulMate_logo.png"/>');"></a>
      </div>
      <!-- 나비(메뉴선택 바)  -->
      <div class="navigationWrap">
        <ul class="navigationArea">
          <c:if test="${empty authInfo }">
					<li><a href="<c:url value='/login'/>">Log In</a></li>
					<li><a href="<c:url value='/signUp'/>">Sign Up</a></li>
				</c:if>
				<c:if test="${!empty authInfo }">
					<li>${authInfo.userName }님 환영합니다.</li>
					<li><a href="<c:url value='/main/myPage' />">마이페이지</a></li>
					<li><a href="<c:url value='/main/logout' />">Log Out</a></li>
				</c:if>
        </ul>
      </div>
    </header>   
    <!-- top 끝 --> 
    <!-- 펫정보 -->
    <!-- 사진 / 이름 -->
    <div class="content">
    <div class="mem-summary">
<!--       <img src="#"/> -->
      <span class="img"><i class="fas fa-user-circle fa-7x"></i></span>
      <span>${authInfo.userId }</span>
      <ul class="mem-pet-list">
      	<c:forEach items="${list }" var="intro" varStatus="status">
	        <li>
	        	<i class="fas fa-circle"></i>
	        	<a href="#${intro.petId }" onclick="showPet('${status.index }');">${intro.petName }</a>
	        </li>
      	</c:forEach>
      </ul>
    </div>
    <!-- 메인 펫 정보 -->
    <c:forEach items="${list }" var="pet">
    <form action="myPetModify" method="post" name="frm" class="frm" id="${pet.petId }">
    <input type="hidden" name="petId" value="${pet.petId }"/>
    <div class="pet-info-area" >
      <h2 class="">
      	<c:if test="${pet.petRep eq '1' }">대표 펫 정보</c:if>
      	<c:if test="${pet.petRep eq '0' }">펫 정보</c:if>
      </h2>
      <ul>
        <li>
          <span class="pet-info-title">이름</span>
          <label class="pet-info-input"><input type="text" name="petName" placeholder="펫이름" value="${pet.petName }"/></label>
        </li>
        <li>
          <span class="pet-info-title">구분</span>
          <label class="pet-info-input"><input type="text" name="kind" placeholder="펫품종" value="<c:if test="${pet.kind eq 'D' }">개</c:if>" readonly="readonly"/></label>
        </li>
        <li>
          <span class="pet-info-title">크기</span>
          <label class="pet-info-input">
          	<input type="radio" name="petSize" value="small" <c:if test="${pet.petSize eq 'small' }">checked</c:if>/><span>소형</span>
          </label>
          <label class="pet-info-input">
          	<input type="radio" name="petSize" value="middium" <c:if test="${pet.petSize eq 'middium' }">checked</c:if>/><span>중형</span>
          </label>
          <label class="pet-info-input">
          	<input type="radio" name="petSize" value="big" <c:if test="${pet.petSize eq 'big' }">checked</c:if>/><span>대형</span>
          </label>
        </li>
        <li>
        <li>
          <span class="pet-info-title">품종</span>
          <label class="pet-info-input">
          	<input type="text" name="breed" value="${pet.breed }"/>
          </label>
        </li>
        <li>
          <span class="pet-info-title">몸무게(kg)</span>
          <label class="pet-info-input"><input type="text" name="weight" placeholder="몸무게" value="${pet.weight }"/></label>
        </li>
        <li>
          <span class="pet-info-title">나이(세)</span>
          <label class="pet-info-input"><input type="text" name="age" placeholder="나이" value="${pet.age }"/></label>
        </li>
        <li>
          <span class="pet-info-title">성별</span>
          <label class="pet-info-input">
	          <input type="radio" name="gender" <c:if test="${pet.gender eq 'M' }">checked</c:if> value="M"/><span>남아</span>
          </label>
          <label class="pet-info-input">
	          <input type="radio" name="gender" <c:if test="${pet.gender eq 'F' }">checked</c:if> value="F"/><span>여아</span>
	      </label>
        </li>
        <li>
          <span class="pet-info-title">중성화</span>
          <label class="pet-info-input">${pet.isNeutral }</label>
        </li>
        <li>
          <span class="pet-info-title">전자칩</span>
          <label class="pet-info-input"><input type="text" name="microNum" placeholder="전자칩" value="${pet.microNum }" /></label>
        </li>
        <li>
          <span class="pet-info-title">성격/버릇</span>
          <label class="pet-info-input"><textarea name="petDesc" placeholder="성격이나 버릇을 입력해주세요." >${fn:replace(pet.petDesc,cn,br) }</textarea></label>
        </li>
      </ul>
    </div>
    <div class="btn-area">
      <input type="submit" value="저장하기"/>
      <c:if test="${pet.petRep eq '0' }">
      	<input type="button" value="대표펫 등록" onclick="changeRep('${pet.petId}')"/>
      </c:if>
      <input type="button" value="추가하기" onclick="javascript:location.href='<c:url value="/main/addPet"/>'"/>
      <input type="button" value="삭제하기" onclick="return delPet('${pet.petId}', '${pet.petRep }');"/>
    </div>
    </form>
    </c:forEach>
    </div>
    <!-- foot -->
    <footer>
      SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved.
    </footer>
    <!-- foot 끝 -->
    <script type="text/javascript">
    	var petList = document.getElementsByClassName('frm');
    	
    	function changeRep(petId) {
    		if(confirm('대표 펫을 변경하시겠습니까?')) {
    			location.href = '/main/changeRep/' + petId;
    		}
    	}
    	
    	function delPet(petId, petRep){
    		if(petRep == '1') {
    			alert('대표 펫은 삭제할 수 없습니다.');
    			return false;
    		} else {
    			if(confirm('정말 삭제하시겠습니까?')) location.href="/main/delPet/" + petId;
    			else return false;
    		}
    	}
    	
    	function showPet(num){
    		for(var i=0 ; i < petList.length ; i++) {
    			petList[i].style.display = 'none';
    		}
    		petList[num].style.display = 'block';
    	}
    	
    	function init(){
    		for(var i=0 ; i < petList.length ; i++) {
    			petList[i].style.display = 'none';
    		}
    		petList[0].style.display = 'block';
    	}
    	init();
    </script>
</body>
</html>