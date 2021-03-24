/**
 * 
 */
function change(code, status, year, month, date){
	status = {
			type : "post"
			,url : "changeSt"
			,dataType : "text"
			,data : { "reservCode" : code , "status" : status }
			,success : function(result){
				if(result == 1) alert('처리가 완료되었습니다.');
				getList(year, month, date);
			}
			,errors : function(){alert('다시 시도해주세요.');}
	};
	$.ajax(status);
}
function getList(year, month, date) {
	$('#list-area').load('dateReserve', {"year" : year, "month" : month, "date" : date});
//	showList = {
//			type : "post"
//			,url : "dateReserve"
//			,dataType : "html"
//			,data : {
//				"year" : year
//				,"month" : month
//				,"date" : date
//			}
//			,success : function(data) {
//				console.log('실행');
//				$('.list-area').load(data);
//			}
//			,errors : function() {
//				alert('에러');
//			}
//	};
//	$.ajax(showList);
}
function init(){
	
}

init();