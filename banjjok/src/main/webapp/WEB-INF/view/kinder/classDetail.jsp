<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ClassDetail</title>
</head>
<body>
<div class="wrapper">
	
	<div class="content">
	<form action="#" method="post" name="frm">
	
		<input type="hidden" name="cCode" value="${dto.cCode }"/>
		<input type="hidden" name="pCode" value="${dto.pCode }"/>
	
		<table style="width:500px;" class="table">
		
				<tr><td colspan="2"><h2>Detail Info of Class</h2></td></tr>
				<tr>
					<th>PROGRAM OF RESPONSIBILITY</th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
				<tr>
					<th></th>
					<td></td>
				</tr>
		</table>
		</form>
	</div>
	
	<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
	
</div>

${lists.get(0).cCode }
</body>
</html>