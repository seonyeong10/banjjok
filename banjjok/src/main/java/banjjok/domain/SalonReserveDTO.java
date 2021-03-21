package banjjok.domain;

import java.sql.Date;

public class SalonReserveDTO {
	String reservCode;
	String petId;
	String memId;
	String serviceCode;
	String desnId;
	Date reservDate;
	String reservTime;
	String reservDesc;

	public String getReservCode() {
		return reservCode;
	}

	public void setReservCode(String reservCode) {
		this.reservCode = reservCode;
	}

	public String getPetId() {
		return petId;
	}

	public void setPetId(String petId) {
		this.petId = petId;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getServiceCode() {
		return serviceCode;
	}

	public void setServiceCode(String serviceCode) {
		this.serviceCode = serviceCode;
	}

	public String getDesnId() {
		return desnId;
	}

	public void setDesnId(String desnId) {
		this.desnId = desnId;
	}

	public Date getReservDate() {
		return reservDate;
	}

	public void setReservDate(Date reservDate) {
		this.reservDate = reservDate;
	}

	public String getReservTime() {
		return reservTime;
	}

	public void setReservTime(String reservTime) {
		this.reservTime = reservTime;
	}

	public String getReservDesc() {
		return reservDesc;
	}

	public void setReservDesc(String reservDesc) {
		this.reservDesc = reservDesc;
	}

}
