<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Class</title>
</head>
<body>
	<div class="wrapper">
		
		<div class="content"> 
		
			<table style="width:500px;" class="table">
				<div class="table title">
					<h2>CLASS LIST</h2>
				</div>
				<tr>
					<th>CLASS CODE</th>
					<th>WEIGHT DIVISION</th>
					<th>CURRENT PUPPY</th>
				</tr>
				
			<c:forEach items="${lists }" var="dto">
				<tr> 
					<td><a href="classDetail?cCode=${dto.cCode }">${dto.cCode }</a></td>
					<td>
						<c:if test="${dto.cWeight eq '0' }">NOTHING</c:if>
						<c:if test="${dto.cWeight eq '1' }">SMALL-SIZED</c:if>
						<c:if test="${dto.cWeight eq '2' }">MEDIUM-SIZED</c:if>
						<c:if test="${dto.cWeight eq '3' }">LARGE-SIZED</c:if>
					</td>
					<td>
						<c:if test="${dto.cCount eq '3' }">3 DOGS</c:if>
						<c:if test="${dto.cCount eq '8' }">8 DOGS</c:if>
					</td>
				</tr>
			</c:forEach>
				
				<tr>
					<td colspan="3">
						<input type="button" value="ENROLL" onclick="javascript:location.href='../kinder/enrollclass'" />
						<input type="button" value="BACK" onclick="javascript:location.href='../kinder/administration'" />
					</td>
				</tr>
			</table>
		
		</div>
		
		<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
	
	</div>
</body>
</html>