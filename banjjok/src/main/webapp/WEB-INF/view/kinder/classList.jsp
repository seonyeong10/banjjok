<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/include.jsp"%>
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
					<th>CLASS NAME</th>
					<th>WEIGHT DIVISION</th>
					<th>CURRENT PUPPY</th>
				</tr>
				
			<c:forEach items="${lists }" var="dto">
				<tr> 
					<td><a href="classDetail?cCode=${dto.cCode }">${dto.cCode }</a></td>
					<td>${dto.cWeight }</td>
					<td>${dto.cCount }</td>
				</tr>
			</c:forEach>
				
				<tr>
					<td colspan="3">
						<input type="button" value="ENROLL" onclick="javascript:location.href='../enrollclass'" />
						<input type="button" value="BACK" onclick="javascript:location.href='../administration'" />
					</td>
				</tr>
			</table>
		
		</div>
		
		<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
	
	</div>
</body>
</html>