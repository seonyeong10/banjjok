package banjjok.domain;
// 살롱 예약현황

import java.sql.Timestamp;

public class SalonRSDTO {
	String reservDate;
//	String dateRagne;
	String desnId;
	String time;	// 시간 비교
	String flag;
	
	public SalonRSDTO() {
		super();
	}

	public SalonRSDTO(String reservDate, String desnId) {
		super();
		this.reservDate = reservDate;
		this.desnId = desnId;
	}
	
	public String getReservDate() {
		return reservDate;
	}

	public void setReservDate(String reservDate) {
		this.reservDate = reservDate;
	}

//	public String getDateRagne() {
//		return dateRagne;
//	}
//
//	public void setDateRagne(String dateRagne) {
//		this.dateRagne = dateRagne;
//	}

	public String getDesnId() {
		return desnId;
	}

	public void setDesnId(String desnId) {
		this.desnId = desnId;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}
	
}
