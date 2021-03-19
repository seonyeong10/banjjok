<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실등록(roomRegist.jsp)</title>
<link href="/static/css/baseCSS.css" rel="stylesheet" type="text/css" />
<link href="/static/css/footer.css" rel="stylesheet" type="text/css" />
<!-- <link href="/static/css/sitterForm.css" rel="stylesheet" type="text/css" -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
</head>
<body>
<%@ include file="../../include/hotelTop.jsp" %>
<form action="roomRegistOk" method="post" id="frm" name="frm" enctype="multipart/form-data">
<label for="roomImg">객실사진</label> <hr />
<input type="file" name="roomImg" multiple="multiple" />
<input type="submit" value="등록" />
</form>

	<!-- foot -->
		<footer> SoulMate's Forest 02.125.7979 Copyright &copy All Rights reserved. </footer>
	<!-- foot 끝 -->
<!-- 	<script src="static/js/room.js"></script> -->
</body>
</html>
