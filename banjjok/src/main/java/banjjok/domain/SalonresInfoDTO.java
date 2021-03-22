package banjjok.domain;

import java.sql.Timestamp;

public class SalonresInfoDTO {
	String reservCode;
	String petId;
	String petName;
	String serviceCode;
	String serviceName;
	String desnId;
	String desnName;
	Timestamp reservDate;
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

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public String getServiceCode() {
		return serviceCode;
	}

	public void setServiceCode(String serviceCode) {
		this.serviceCode = serviceCode;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public String getDesnId() {
		return desnId;
	}

	public void setDesnId(String desnId) {
		this.desnId = desnId;
	}

	public String getDesnName() {
		return desnName;
	}

	public void setDesnName(String desnName) {
		this.desnName = desnName;
	}

	public Timestamp getReservDate() {
		return reservDate;
	}

	public void setReservDate(Timestamp reservDate) {
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
