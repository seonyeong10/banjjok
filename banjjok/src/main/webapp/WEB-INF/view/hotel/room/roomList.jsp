<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 리스트</title>
</head>
<body>
<%@include file="../../include/hotelTop.jsp" %>
<a href="/hotel/roomRegist" >객실등록</a><hr />
<c:forEach items="${lists }" var="room">
<c:forTokens items="${room.roomImg }" delims="`" var="img" varStatus="status">
<%-- <c:if test="${status % 2 == 0 }"></c:if> --%>
<img src="/hotel/room/upload/${img }"/>
</c:forTokens>
</c:forEach>
</body>
</html>