<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스타일 등록</title>
<link href="<c:url value='/static/css/baseCSS.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/footer.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/static/css/memberForm.css'/>" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.form.js'/>"></script>
</head>
<body>
	<%@ include file="../../../include/top.jsp"%>
	<!-- 서비스 메뉴 등록 -->
	<div class="member-regist-wrap">
		<div class="title">
			<h2>Regist</h2>
		</div>
		<div class="current-section">
			<a href="#" > 
				<span class="pennant-pet"><span class="fa fa-ruler fa-2x"></span>&nbsp;스타일 등록</span>
			</a>
		</div>
		<form action="../updateStyle" name="frm" id="frm" method="post" enctype="multipart/form-data">
			<input type="hidden" name="styleCode" value="${list.styleCode }"/>
			<!-- 보호자 정보 -->
			<div id="member-info">
				<div class="mem-element">
					<p class="element-name">카테고리</p>
						<select name="styleCateg">
							<option>카테고리를 선택하세요.</option>
							<option value="ba" <c:if test="${list.styleCateg eq 'ba' }">selected</c:if> >목욕</option>
							<option value="pa" <c:if test="${list.styleCateg eq 'pa' }">selected</c:if> >부분미용</option>
							<option value="al" <c:if test="${list.styleCateg eq 'al' }">selected</c:if> >전체미용</option>
							<option value="sp" <c:if test="${list.styleCateg eq 'sp' }">selected</c:if> >스포팅</option>
							<option value="st" <c:if test="${list.styleCateg eq 'st' }">selected</c:if> >스타일컷</option>
						</select>
				</div>
				<div class="mem-element">
					<p class="element-name">스타일 이름</p>
					<span class="element-value"><input type="text" name="styleName" placeholder="스타일의 이름을 입력하세요." value="${list.styleName }" /></span>
<%-- 					<div class="element-errors"><form:errors path="styleName" /> </div> --%>
				</div>
				<div class="mem-element">
					<p class="element-name">스타일 사진</p>
					<span class="image" id="desnImg"><img src="<c:url value='/salon/designer/styleBook/upload/${list.styleImg }'/>" alt="picture" /></span>
					<button type="button" onclick="imgDelete('${list.styleImg}', this);" id="delBtn">삭제</button>
					<br />
					<span class="element-value"><input type="file" name="styleImg" style="display : none;" id="addFile"/></span>
					<p class="element-errors">${noImg }</p>
				</div>
				<div class="mem-element">
					<p class="element-name">[옵션 1] 추천 털 길이</p>
					<span class="element-value"> 
						<label class="element-value">
							<input type="radio" name="styleLength" value="long" <c:if test="${list.styleLength eq 'long' }">checked</c:if> /><span>장모</span>
						</label>
						<label class="element-value">
							<input type="radio" name="styleLength" value="short" <c:if test="${list.styleLength eq 'short' }">checked</c:if> /><span>단모</span>
						</label>
						<label class="element-value">
							<input type="radio" name="styleLength" value="none" <c:if test="${list.styleLength eq 'none' }">checked</c:if> /><span>무관</span>
						</label>
					</span>
<%-- 					<div class="element-errors"><form:errors path="styleLength" /> </div> --%>
				</div>
				<div class="mem-element">
					<p class="element-name">[옵션 2] 추천 곱슬 정도</p>
					<span class="element-value"> 
						<label class="element-value">
							<input type="radio" name="styleCurly" value="curly" <c:if test="${list.styleCurly eq 'curly' }">checked</c:if> /><span>곱슬</span>
						</label>
						<label class="element-value">
							<input type="radio" name="styleCurly" value="halfCurly" <c:if test="${list.styleCurly eq 'halfCurly' }">checked</c:if> /><span>반곱슬</span> 
						</label>
						<label class="element-value">
							<input type="radio" name="styleCurly" value="straight" <c:if test="${list.styleCurly eq 'straight' }">checked</c:if> /><span>직모</span> 
						</label>
						<label class="element-value">
							<input type="radio" name="styleCurly" value="none" checked="checked" <c:if test="${list.styleCurly eq 'none' }">checked</c:if> /><span>무관</span>
						</label>	
					</span>
<%-- 					<div class="element-errors"><form:errors path="styleLength" /> </div> --%>
				</div>
				<div class="mem-element">
					<p class="element-name">스타일 설명</p>
					<span class="element-value"> <textarea name="styleDesc"
							placeholder="스타일에 대해 설명해주세요.">${list.styleDesc }</textarea>
					</span>
<%-- 					<div class="element-errors"><form:errors path="styleDesc" /> </div> --%>
				</div>
				<div class="button-wrap">
					<input type="button" value="취소" onclick="cancle();" />
					<input type="submit" value="등록" />
				</div>
			</div>
		</form>
	</div>
	<!-- foot -->
	<footer> SoulMate's Forest 02.125.7979 Copyright &copy All
		Rights reserved. </footer>
		
	<script type="text/javascript">
	// 이미지 삭제
		function imgDelete(imgFile, btn) {
			// 			location.href = "imgDel?imgFile=" + imgFile;
			del = {
				type : "post",
				url : "/salon/imgDel",
				dataType : "text",
				data : {
					"imgFile" : imgFile
				},
				success : function(result) {
					if (result.trim() == "1") {
						$(btn).text('삭제취소');
						$('#desnImg').hide();
						$('#addFile').show();
					} else {
						$(btn).text('삭제');
						$('#desnImg').show();
						$('#addFile').hide();
					}
				},
				error : function() {
					alert('에러');
					return;
				}
			};
			$.ajax(del);
		}
	</script>
</body>
</html>