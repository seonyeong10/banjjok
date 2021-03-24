/**
 * 살롱 예약 자바스크립트
 */
var now = new Date();
var nowDate = now.getDate();
var nowDayOfWeek = now.getDay();

function getPetName(petName) {
	document.getElementsByName('petName')[0].value = petName;
}

function send(){
	if(document.getElementsByName('petName')[0].value.trim() == "") {
		alert('펫을 선택해주세요.');
		return false;
	} 
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

function loadDesn(serviceCode, month, date) {
	$('#reload-area').load('loadDesn', {"serviceCode" : serviceCode, "month" : month, "date" : date});
	console.log('실행? ' + month);
}


init();

