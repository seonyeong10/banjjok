<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enrollment List</title>
</head>
<body>
	<div class="wrapper">
		<div class="content">
			
			<table style="width:500px;" class="table">
				<tr><th colspan="4">EMPLOYEE ENROLLMENT LIST</th></tr>
				<tr>
					<th>SHOP CODE</th>
					<th>NAME</th>
					<th>RESPONSIBILITY CLASS</th>
					<th>STATEMENT</th>
				</tr>
				
				<c:forEach items="${lists }" var="dto">
					<tr>
						<td>${dto.shopCode }</td>
						<td><a href="enrollDetail?tId=${dto.tId }">${dto.tName }</a></td>
						<td>${dto.cCode }</td>
						<td>${dto.tState }</td>
					</tr>
				</c:forEach>
				
				<tr>
					<td colspan="4">
						<input type="button" value="ENROLL" onclick="javascript:location.href='../enrollment'" />
						<input type="button" value="BACK" onclick="javascript:location.href='../administration'" />
					</td>
				</tr>
				
			</table>
			
		</div>
		<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
	</div>
</body>
</html>