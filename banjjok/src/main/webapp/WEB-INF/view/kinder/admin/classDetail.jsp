<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../include/include.jsp"%>
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
						<c:if test="${lists.get(0).cCode eq '0100-0001' }">SOCIALIZATION TESTING &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '0100-0002' }">SOCIALIZATION TESTING &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '0200-0001' }">SOCIALIZATION TESTING &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '0200-0002' }">SOCIALIZATION TESTING &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '0300-0001' }">SOCIALIZATION TESTING &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '0300-0002' }">SOCIALIZATION TESTING &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1100-1001' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1100-1002' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1100-1003' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1100-1004' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1200-1001' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1200-1002' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1200-1003' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1200-1004' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1300-1001' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1300-1002' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1300-1003' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '1300-1004' }">KINDERGARTEN SMALL-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2100-2001' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2100-2002' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2100-2003' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2100-2004' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2200-2001' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2200-2002' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2200-2003' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2200-2004' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2300-2001' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2300-2002' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2300-2003' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '2300-2004' }">KINDERGARTEN MEDIUM-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3100-3001' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3100-3002' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3100-3003' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3100-3004' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 1 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3200-3001' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3200-3002' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3200-3003' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3200-3004' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 2 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3300-3001' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3300-3002' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3300-3003' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 3 class &gt;</c:if>
						<c:if test="${lists.get(0).cCode eq '3300-3004' }">KINDERGARTEN LARGE-SIZED DOGS &lt; 3 class &gt;</c:if>
					</td>
				</tr>
				<tr>
					<th>WEIGHT GRADE</th>
					<td colspan="2">
						<c:if test="${lists.get(0).cWeight eq '0' }">NOTHING</c:if>
						<c:if test="${lists.get(0).cWeight eq '1' }">SMALL-SIZED</c:if>
						<c:if test="${lists.get(0).cWeight eq '2' }">MEDIUM-SIZED</c:if>
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
					<th rowspan="2">CLASS INFO</th>
					<th>CLASS PHOTO</th>
					<th>CLASS CONTENT</th>
				</tr>
				<tr>
					<td>
						<c:set value="${fn:split(lists.get(0).cPhoto,'`') }" var="i" />
						<img src="/kinder/upload/${i[1] }" alt="class photo" >
					</td>
					<td>
						${lists.get(0).cContent }
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="button" value="DELETE" onclick="return Del();" />
						<input type="button" value="BACK" onclick="javascript:location.href='../classList'" />
					</td>
				</tr>
		</table>
	
	</div>
	
	<footer> SoulMate's Forest 02.125.7979 Copyright & copy All Rights reserved. </footer>
	
</div>
<script type="text/javascript">
	function Del(){
		if(confirm('Are you sure remove this data of class?')){
			location.href = '../classDel?cCode=' + ${lists.get(0).cCode};
		}
	}
</script>
</body>
</html>