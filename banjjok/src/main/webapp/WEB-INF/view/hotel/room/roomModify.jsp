<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>roomModify</title>
<link href="/static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="/static/css/footer.css" rel="stylesheet" type="text/css" />
<link href="/static/css/memberForm.css" rel="stylesheet"
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
	<%@ include file="../../include/hotelTop.jsp"%>
	<div class="member-regist-wrap">
		<div class="title">
			<h2>객실 정보수정</h2>
		</div>
		<form:form action="/hotel/roomModifyPro" method="post" name="frm"
 			onsubmit="return frmSend();" modelAttribute="roomCommand" 
			enctype="multipart/form-data">
			<table border="1">
				<tr>
					<td>구분</td>
					<td>객실</td>
				</tr>
				<tr>
					<td>객실코드</td>
					<td>
						${list.roomCode } <input type="hidden" name="roomCode"
							value="${list.roomCode }" />
					</td>
				</tr>
				<tr>
					<td>사진</td>
					<td>
						<c:forTokens items="${list.roomImg }" delims="`" var="img" varStatus="status">
<%-- 						<c:set value="${fn:split(list.roomImg,'`') }" var="i" /> --%>
						<input type="file" name="roomImg" style="display:none;" /> <!-- 파일 업로드창은 안보이게 -->
						<img src="/hotel/room/upload/${img }" alt="객실 사진" border="0" 
							style="width: 100px; height: 100px" onclick="document.all.roomImg.click();"/>
<!-- 							사진 새로 등록시 새로 등록한 사진 보이게 하는거 아직 안 넣음 -->
<%-- 						<button type="button" onclick="imgDel('${i[1]}', this);" --%>
<!-- 							id="delBtn">삭제</button> -->
						</c:forTokens>
					</td>
				</tr>
				<tr>
					<td>객실 이름</td>
					<td>
						<form:input path="roomName" value="${list.roomName }" />
					</td>
				</tr>
<!-- 				<tr> -->
<!-- 					<td>객실타입</td> -->
<!-- 					<td> -->
<!-- 						<select id="roomType" name="roomType" class="sel"> -->
<%--                         	<option>{list.roomType }</option> --%>
<!--                             <option value="DE">DELUX ROOM</option> -->
<!--                             <option value="DE_Pre">DELUX PREMIUM ROOM"</option> -->
<!--                             <option value="VIP">VIP ROOM</option> -->
<!--                             <option value="VVIP">VVIP ROOM</option> -->
<!--                             <option value="Add">ADD ROOM</option> -->
<!--                        </select> -->
<!-- 					</td> -->
<!-- 				</tr> -->
				<tr>
					<td>객실 가격</td>
					<td>
						<form:input path="roomPrice" value="${list.roomPrice }"/>원
					</td>
				</tr>
				<tr>
					<td>객실 설명</td>
					<td>	
						<form:input path="roomDesc" value="${list.roomDesc }"/>
					</td>
				</tr>
			</table>
			<div class="button-wrap">
				<input type="button" value="이전" onclick="javascript:history.back();" />
				<input type="submit" value="수정" />
				<input type="button" value="삭제" onclick="roomDelete();" />
			</div>
		</form:form>
	</div>

	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
	<!-- 	<script src="js/script.js"></script> -->
	<!-- foot 끝 -->
	<script src="/static/js/sitter.js"></script>

</body>
</html>