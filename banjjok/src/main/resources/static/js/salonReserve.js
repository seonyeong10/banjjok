/**
 * 살롱 예약 자바스크립트
 */
var now = new Date();
var nowDate = now.getDate();
var nowDayOfWeek = now.getDay();

function getId(desnId){
	document.getElementsByName('desnId')[0].value = desnId;
}


function init(){
//	console.log(now.getFullYear());
//	console.log(now.getMonth()+1);
}

function changeDate(serviceCode, month, date, btn) {
	changeDate = {
			type : "post"
			,url : "desnStatus"
//			,url : "reserve"
			,dataType : "html"
			,data : {
				"serviceCode" : serviceCode
				,"month" : month
				,"date" : date
			}
			,success : function(data){
//				$('#reload-area').load(location + '#reload-area');
				$('#reload-area').html(data).find('#reload-area');
//				alert('성공');
			}
			,errors : function(){
				alert('에러');
			}
	};
	$.ajax(changeDate);
}

init();

