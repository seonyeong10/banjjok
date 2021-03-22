/**
 * 살롱 예약 자바스크립트
 */
var now = new Date();
var nowDate = now.getDate();
var nowDayOfWeek = now.getDay();

function send(){
	if(document.getElementsByName('desnId')[0].value.trim() == "") {
		alert('시간을 선택해주세요.');
		return false;
	}
}

function getId(desnId, desnName){
	document.getElementsByName('desnId')[0].value = desnId;
	document.getElementsByName('desnName')[0].value = desnName;
}


function init(){
//	console.log(now.getFullYear());
//	console.log(now.getMonth()+1);
//	document.getElementsByName('petId')[0].checked = 'checked';
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

