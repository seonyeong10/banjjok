<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enrollment Class</title>
</head>
<body>
<div class="wrapper">
	<div class="content">
		<form:form action="enrollclassOk" method="post" name="frm" 
					enctype="multipart/form-data" modelAttribute="classCommand">
			<table style="width:1000px;" class="table">
				<tr><th colspan="3"><h2>ENROLLMENT CLASS</h2></th></tr>
				<tr><th>CLASSIFY</th><th style="width:45%">CONTENT</th><th>WRITE</th></tr>
				<tr>
					<th>PROGRAM OF RESPONSIBILITY</th> 
					<td>
						0000-0001 : KINDERGARTEN ONE DAY - BASIC<br />
						0000-0002 : KINDERGARTEN ONE DAY - ALL DAY<br />
						0000-0003 : KINDERGARTEN ONE MONTH - BASIC<br />
						0000-0004 : KINDERGARTEN ONE MONTH - ALL DAY<br />
						0000-0005 : SOCIALIZATION TESTING - FIRST TIME<br />
						0000-0006 : SOCIALIZATION TESTING - RETRY
					</td>
					<td>
						<form:input path="pCode" id="pCode" autofocus="autofocus"/>
						<form:errors path="pCode" />
					</td>
				</tr>
				<tr>
					<th>CLASS CODE</th>
					<td>
						00 : SOCIALIZATION TESTING<br />
						1* : KINDERGARTEN SMALL-SIZED DOGS<br />
						2* : KINDERGARTEN MIDINUM-SIZED DOGS<br />
						3* : KINDERGARTEN LARGE-SIZED DOGS
					</td>
					<td>
						<form:input path="cCode" id="cCode" />
						<form:errors path="cCode" />
					</td>
				</tr>
				<tr>
					<th>WEIGHT GRADE</th>
					<td>
						0 : NOTHING (SOCIALIZATION TESTING)<br />
						1 : KINDERGARTEN SMALL-SIZED DOGS<br />
						2 : KINDERGARTEN MIDINUM-SIZED DOGS<br />
						3 : KINDERGARTEN LARGE-SIZED DOGS
					</td>
					<td>
						<form:input path="cWeight" id="cWeight" />
						<form:errors path="cWeight" />
					</td>
				</tr>
				<tr>
					<th>CLASS COLOR CODE</th>
					<td>
						CCCCCC : SOCIALIZATION TESTING<br />
						FF0000 : 11<br />
						FF3300 : 12<br />
						FF0066 : 13<br />
						FFCC00 : 21<br />
						00CC66 : 22<br />
						66CCFF : 23<br />
						3333FF : 31<br />
						000066 : 32<br />
						9966FF : 33
					</td>
					<td>
						<form:input path="cColor" id="cColor" />
						<form:errors path="cColor" />
					</td>
				</tr>
				<tr>
					<th>MAXIMUM DOGS</th>
					<td>
						8 : KINDERGARTEN<br />
						3 : SOCIALIZATION TESTING
					</td>
					<td>
						<form:input path="cCount" id="cCount" />
						<form:errors path="cCount" />
					</td>
				</tr>
				<tr>
					<th>CLASS INFO</th>
					<td>
						<input type="file" name="cPhoto" multiple="multiple" />
					</td>
					<td>
						<form:input path="cContent" id="cContent" />
						<form:errors path="cContent" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="SUBMIT" />
						<input type="reset" value="RESET" />
						<input type="button" value="BACK" onclick="javascript:location.href='../class'" />
					</td>
				</tr>
			</table>
		</form:form>
	</div>
	<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
</div>
</body>
</html>