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
				<tr><th colspan="2"><h2>ENROLLMENT CLASS</h2></th></tr>
				<tr><th style="width:60%">CLASSIFY</th><th style="width:40%">CONTENT</th></tr>
				<tr>
					<th colspan="2">PROGRAM INFO</th>
				</tr>
				<tr>
					<th>PROGRAM OF RESPONSIBILITY</th> 
					<td>
						<form:errors path="pCode" />
						<select class="selection" name="pCode">
							<option value="0000-0001">KINDERGARTEN ONE DAY - BASIC</option>
							<option value="0000-0002">KINDERGARTEN ONE DAY - ALL DAY</option>
							<option value="0000-0003">KINDERGARTEN ONE MONTH - BASIC</option>
							<option value="0000-0004">KINDERGARTEN ONE MONTH - ALL DAY</option>
							<option value="0000-0005">SOCIALIZATION TESTING - FIRST TIME</option>
							<option value="0000-0006">SOCIALIZATION TESTING - RETRY</option>
						</select>
					</td>
				</tr>
				<tr>
					<th colspan="2">CLASS INFO</th>
				</tr>
				<tr>
					<th>CLASS CODE</th>
					<td>
						<form:errors path="cCode" />
						<select class="selection" name="cCode">
							<option value="0000-0001">0100-0001</option>
							<option value="0000-0002">0100-0002</option>
							<option value="0000-0001">0200-0001</option>
							<option value="0000-0002">0200-0002</option>
							<option value="0000-0001">0300-0001</option>
							<option value="0000-0002">0300-0002</option>
							<option value="1100-1001">1100-1001</option>
							<option value="1100-1002">1100-1002</option>
							<option value="1100-1003">1100-1003</option>
							<option value="1100-1004">1100-1004</option>
							<option value="1200-1001">1200-1001</option>
							<option value="1200-1002">1200-1002</option>
							<option value="1200-1003">1200-1003</option>
							<option value="1200-1004">1200-1004</option>
							<option value="1300-1001">1300-1001</option>
							<option value="1300-1002">1300-1002</option>
							<option value="1300-1003">1300-1003</option>
							<option value="1300-1004">1300-1004</option>
							<option value="2100-2001">2100-2001</option>
							<option value="2100-2002">2100-2002</option>
							<option value="2100-2003">2100-2003</option>
							<option value="2100-2004">2100-2004</option>
							<option value="2200-2001">2200-2001</option>
							<option value="2200-2002">2200-2002</option>
							<option value="2200-2003">2200-2003</option>
							<option value="2200-2004">2200-2004</option>
							<option value="2300-2001">2300-2001</option>
							<option value="2300-2002">2300-2002</option>
							<option value="2300-2003">2300-2003</option>
							<option value="2300-2004">2300-2004</option>
							<option value="3100-3001">3100-3001</option>
							<option value="3100-3002">3100-3002</option>
							<option value="3100-3003">3100-3003</option>
							<option value="3100-3004">3100-3004</option>
							<option value="3200-3001">3200-3001</option>
							<option value="3200-3002">3200-3002</option>
							<option value="3200-3003">3200-3003</option>
							<option value="3200-3004">3200-3004</option>
							<option value="3300-3001">3300-3001</option>
							<option value="3300-3002">3300-3002</option>
							<option value="3300-3003">3300-3003</option>
							<option value="3300-3004">3300-3004</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>CLASS NAME</th>
					<td>
						<form:errors path="cName" />
						<select class="selection" name="cName">
							<option value="SOCIALIZATION TESTING">SOCIALIZATION TESTING</option>
							<option value="KINDERGARTEN SMALL-SIZED DOGS &lt; 1 class &gt;">KINDERGARTEN SMALL-SIZED DOGS &lt; 1 class &gt;</option>
							<option value="KINDERGARTEN SMALL-SIZED DOGS &lt; 2 class &gt;">KINDERGARTEN SMALL-SIZED DOGS &lt; 2 class &gt;</option>
							<option value="KINDERGARTEN SMALL-SIZED DOGS &lt; 3 class &gt;">KINDERGARTEN SMALL-SIZED DOGS &lt; 3 class &gt;</option>
							<option value="KINDERGARTEN MIDINUM-SIZED DOGS &lt; 1 class &gt;">KINDERGARTEN MIDINUM-SIZED DOGS &lt; 1 class &gt;</option>
							<option value="KINDERGARTEN MIDINUM-SIZED DOGS &lt; 2 class &gt;">KINDERGARTEN MIDINUM-SIZED DOGS &lt; 2 class &gt;</option>
							<option value="KINDERGARTEN MIDINUM-SIZED DOGS &lt; 3 class &gt;">KINDERGARTEN MIDINUM-SIZED DOGS &lt; 3 class &gt;</option>
							<option value="KINDERGARTEN LARGE-SIZED DOGS &lt; 1 class &gt;">KINDERGARTEN LARGE-SIZED DOGS &lt; 1 class &gt;</option>
							<option value="KINDERGARTEN LARGE-SIZED DOGS &lt; 2 class &gt;">KINDERGARTEN LARGE-SIZED DOGS &lt; 2 class &gt;</option>
							<option value="KINDERGARTEN LARGE-SIZED DOGS &lt; 3 class &gt;">KINDERGARTEN LARGE-SIZED DOGS &lt; 3 class &gt;</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>CLASS WEIGHT GRADE</th>
					<td>
						<form:errors path="cWeight" />
						<select class="selection" name="cWeight">
							<option value="0">NONE-SIZEED</option>
							<option value="1">SMALL-SIZED</option>
							<option value="2">MIDINUM-SIZED</option>
							<option value="3">LARGE-SIZED</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>CLASS COLOR CODE</th>
					<td>
						<form:errors path="cColor" />
						<!-- 
							color chip 
							
								CCCCCC
								FF0000
								FF3300
								FF0066
								FFCC00
								00CC66
								66CCFF
								3333FF
								000066
								9966FF
						-->
						
						<select class="selection" name="cColor">
							<option value="GRAY">GRAY</option>
							<option value="RED">RED</option>
							<option value="ORANGE">ORANGE</option>
							<option value="PINK">PINK</option>
							<option value="YELLOW">YELLOW</option>
							<option value="GREEN">GREEN</option>
							<option value="LIGHT BLUE">LIGHT BLUE</option>
							<option value="BLUE">BLUE</option>
							<option value="NAVY">NAVY</option>
							<option value="PURPLE">PURPLE</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>MAXIMUM DOGS</th>
					<td>
						<form:errors path="cCount" />
						<select class="selection" name="cCount">
							<option value="3">3 DOGS</option>
							<option value="8">8 DOGS</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>CLASS PHOTO</th>
					<td>
						<input type="file" name="cPhoto" multiple="multiple" />
					</td>
					
				</tr>
				<tr>
					<th>CLASS CONTENT</th>
					<td>
						<textarea rows="5" cols="40" name="cContent"></textarea>
						<form:errors path="cContent" />
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align:center;">
						<input type="submit" value="SUBMIT" />
						<input type="reset" value="RESET" />
						<input type="button" value="BACK" onclick="javascript:location.href='../classList'" />
					</td>
				</tr>
			</table>
		</form:form>
	</div>
	<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
</div>
</body>
</html>