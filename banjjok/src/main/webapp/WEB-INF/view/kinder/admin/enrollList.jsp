<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enrollment List</title>
</head>
<body>
	<div class="wrapper">
		<div class="content">
			
			<table style="width:800px;" class="table">
				<tr><th colspan="4">EMPLOYEE ENROLLMENT LIST</th></tr>
				<tr>
					<th>SHOP CODE</th>
					<th>NAME</th>
					<th>RESPONSIBILITY CLASS</th>
					<th>STATEMENT</th>
				</tr>
				
				<c:forEach items="${lists }" var="dto">
					<tr>
						<td>
							<c:if test="${dto.shopCode eq '1592-0001' }">Seoul</c:if>
							<c:if test="${dto.shopCode eq '1592-0002' }">Deagu</c:if>
							<c:if test="${dto.shopCode eq '1592-0003' }">Deajeon</c:if>
							<c:if test="${dto.shopCode eq '1592-0004' }">Busan</c:if>
							<c:if test="${dto.shopCode eq '1592-0005' }">Gwangju</c:if>
						</td>
						<td><a href="enrollDetail?tId=${dto.tId }">${dto.tName }</a></td>
						<td>
							${dto.cCode }
						</td>
						<td>
							<c:if test="${dto.tState eq '0' }">RETIREE</c:if>
							<c:if test="${dto.tState eq '1' }">INCUMBENT</c:if>
							<!-- FOR FEMAIL -->
							<c:if test="${dto.tState eq '2' }">MATERNITY LEAVE</c:if> 
							<!-- FOR MAIL -->
							<c:if test="${dto.tState eq '3' }">PATERNITY LEAVE</c:if>
						</td>
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