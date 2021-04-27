/**
 * 
 */
function menuDel() {
	if (confirm('서비스를 삭제하시겠습니까?')) {
		location.href = "<c:url value='/salon/menu/menuDelete?serviceCode=${dto.serviceCode }'/>";
	}
}

function modify(userId, serviceCode) {
	location.href = "/main/reserve/salon/review/modify?userId=" + userId + "&serviceCode=" + serviceCode;
}