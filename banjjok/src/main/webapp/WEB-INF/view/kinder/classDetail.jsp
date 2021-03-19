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
	
	
		<input type="hidden" name="cCode" value="${lists.get(0).cCode }"/>
	
		<table style="width:500px;" class="table">
		
				<tr><td colspan="3"><h2>Detail Info of Class</h2></td></tr>
				<tr>
					<th>PROGRAM OF RESPONSIBILITY</th>
					<td colspan="2">
						<c:choose>
							<c:when test="${lists.get(0).pCode eq '0000-0001' }">
								KINDERGARTEN ONE DAY - BASIC
							</c:when>
							<c:when test="${lists.get(0).pCode eq '0000-0002' }">
								KINDERGARTEN ONE DAY - ALL DAY
							</c:when>
							<c:when test="${lists.get(0).pCode eq '0000-0003' }">
								KINDERGARTEN ONE MONTH - BASIC
							</c:when>
							<c:when test="${lists.get(0).pCode eq '0000-0004' }">
								KINDERGARTEN ONE MONTH - ALL DAY
							</c:when>
							<c:when test="${lists.get(0).pCode eq '0000-0005' }">
								SOCIALIZATION TESTING - FIRST TIME
							</c:when>
							<c:when test="${lists.get(0).pCode eq '0000-0006' }">
								SOCIALIZATION TESTING - RETRY
							</c:when>
						</c:choose>
					</td>
				</tr>
				<tr>
					<th>CLASS CODE</th>
					<td colspan="2">
						<c:if test="${lists.get(0).cCode eq '00' }">SOCIALIZATION TESTING</c:if>
						<c:if test="${lists.get(0).cCode eq '11' }">KINDERGARTEN SMALL-SIZED DOGS < 1 class ></c:if>
						<c:if test="${lists.get(0).cCode eq '12' }">KINDERGARTEN SMALL-SIZED DOGS < 2 class ></c:if>
						<c:if test="${lists.get(0).cCode eq '13' }">KINDERGARTEN SMALL-SIZED DOGS < 3 class ></c:if>
						<c:if test="${lists.get(0).cCode eq '21' }">KINDERGARTEN MIDINUM-SIZED DOGS < 1 class ></c:if>
						<c:if test="${lists.get(0).cCode eq '22' }">KINDERGARTEN MIDINUM-SIZED DOGS < 2 class ></c:if>
						<c:if test="${lists.get(0).cCode eq '23' }">KINDERGARTEN MIDINUM-SIZED DOGS < 3 class ></c:if>
						<c:if test="${lists.get(0).cCode eq '31' }">KINDERGARTEN LARGE-SIZED DOGS < 1 class ></c:if>
						<c:if test="${lists.get(0).cCode eq '32' }">KINDERGARTEN LARGE-SIZED DOGS < 2 class ></c:if>
						<c:if test="${lists.get(0).cCode eq '33' }">KINDERGARTEN LARGE-SIZED DOGS < 3 class ></c:if>
					</td>
				</tr>
				<tr>
					<th>WEIGHT GRADE</th>
					<td colspan="2">
						<c:if test="${lists.get(0).cWeight eq '0' }">NOTHING</c:if>
						<c:if test="${lists.get(0).cWeight eq '1' }">SMALL-SIZED</c:if>
						<c:if test="${lists.get(0).cWeight eq '2' }">MIDINUM-SIZED</c:if>
						<c:if test="${lists.get(0).cWeight eq '3' }">LARGE-SIZED</c:if>
					</td>
				</tr>
				<tr>
					<th>CLASS COLOR CODE</th>
					<td colspan="2">
						${lists.get(0).cColor}
					</td>
				</tr>
				<tr>
					<th>MAXIMUM DOGS</th>
					<td colspan="2">
						<c:if test="${lists.get(0).cCount eq '3' }">3 DOGS</c:if>
						<c:if test="${lists.get(0).cCount eq '8' }">8 DOGS</c:if>
					</td>
				</tr>
				<tr>
					<th>CLASS INFO</th>
					<td>
						<c:set value="${fn:split(lists.get(0).cPhoto,'`') }" var="i" />
						<img src="/kinder/upload/${i[1] }" alt="class photo" style="width: 150px; height: 200px">
					</td>
					<td>
						${lists.get(0).cContent }
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="button" value="DELETE" onclick="javascript:location.href = '../classDel?cCode=${lists.get(0).cCode }'" />
						<input type="button" value="BACK" onclick="javascript:location.href='../classList'" />
					</td>
				</tr>
		</table>
	
	</div>
	
	<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
	
</div>
<script type="text/javascript">
// 	function Del(cCode){
// 		console.log(cCode);
// 		if(confirm('Are you sure remove this data of class?')){
// 			location.href = '../classDel?cCode=' + cCode;
// 		}
// 		return false;
// 	}
</script>
</body>
</html>