<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Enrollment Detail Info</title>
</head>
<body>
	<div class="wrapper">
		<div class="content">
			<table style="width: 500px;" class="table">
				<tr>
					<th colspan=""><h2>Employee Enrollment Detail Info</h2></th>
				</tr>
				<tr>
					<th>SHOP CODE</th>
					<td>${list.shopCode }</td>
				</tr>
				<tr>
					<th>ID</th>
					<td>${lists.tId }</td>
				</tr>
				<tr>
					<th>NAME</th>
					<td>${lists.tName }</td>
				</tr>
				<tr>
					<th>PHONE NUMBER</th>
					<td>${lists.tPh }</td>
				</tr>
				<tr>
					<th>EMAIL ADDRESS</th>
					<td>${lists.tEmail }</td>
				</tr>
				<tr>
					<th>ENTRADA</th>
					<td>${lists.tJoin }</td>
				</tr>
				<tr>
					<th>DUTY DAY</th>
					<td>${lists.tDuty }</td>
				</tr>
				<tr>
					<th>REGISTATION DATE</th>
					<td>${lists.tRegist }</td>
				</tr>
				<tr>
					<th>TEACHER PHOTO</th>
					<td>
						<c:set value="${fn:split(lists.tPhoto,'`') }" var="i" />
						<img src="/kinder/upload/${i[1] }" alt="teacher photo" style="width:150px; height:200px" />
					</td>
				</tr>
				<tr>
					<th>RESPONSIBILITY CLASS</th>
					<td>${lists.cCode }</td>
				</tr>
				<tr>
					<th>STATEMENT</th>
					<td>
						<c:if test="${lists.tState eq '0' }">RETIREE</c:if>
						<c:if test="${lists.tState eq '1' }">INCUMBENT</c:if>
						<!-- FOR FEMAIL -->
						<c:if test="${lists.tState eq '2' }">MATERNITY LEAVE</c:if> 
						<!-- FOR MAIL -->
						<c:if test="${lists.tState eq '3' }">PATERNITY LEAVE</c:if>
						${lists.tState }
					</td>
				</tr>
			</table>
		</div>
		<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
	</div>
</body>
</html>