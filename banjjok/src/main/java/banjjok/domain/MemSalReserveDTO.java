package banjjok.domain;

import java.sql.Timestamp;

public class MemSalReserveDTO {
	String reservCode;
	Timestamp reservDate;
	String serviceName;
	String desnName;
	String petName;
	String memName;
	String memMobile;
	String reservUse;	// 0 결제완료, 1 시술완료, 2 취소
	Long serviceFee;
	String payMethod;
	Long totalFee;
	Timestamp useDate;
	Timestamp cancleDate;

	String memId;	// select할 때 쓸거
	String desnUse;	// 1 원장 2 수석디자이너 3 디자이너 4 퇴사자
	String desnId;
	String reservDesc;
	
	public String getReservCode() {
		return reservCode;
	}

	public void setReservCode(String reservCode) {
		this.reservCode = reservCode;
	}

	public Timestamp getReservDate() {
		return reservDate;
	}

	public void setReservDate(Timestamp reservDate) {
		this.reservDate = reservDate;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public String getDesnName() {
		return desnName;
	}

	public void setDesnName(String desnName) {
		this.desnName = desnName;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemMobile() {
		return memMobile;
	}

	public void setMemMobile(String memMobile) {
		this.memMobile = memMobile;
	}

	public String getReservUse() {
		return reservUse;
	}

	public void setReservUse(String reservUse) {
		this.reservUse = reservUse;
	}

	public Long getServiceFee() {
		return serviceFee;
	}

	public void setServiceFee(Long serviceFee) {
		this.serviceFee = serviceFee;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public Long getTotalFee() {
		return totalFee;
	}

	public void setTotalFee(Long totalFee) {
		this.totalFee = totalFee;
	}

	public Timestamp getUseDate() {
		return useDate;
	}

	public void setUseDate(Timestamp useDate) {
		this.useDate = useDate;
	}

	public Timestamp getCancleDate() {
		return cancleDate;
	}

	public void setCancleDate(Timestamp cancleDate) {
		this.cancleDate = cancleDate;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getDesnUse() {
		return desnUse;
	}

	public void setDesnUse(String desnUse) {
		this.desnUse = desnUse;
	}

	public String getDesnId() {
		return desnId;
	}

	public void setDesnId(String desnId) {
		this.desnId = desnId;
	}

	public String getReservDesc() {
		return reservDesc;
	}

	public void setReservDesc(String reservDesc) {
		this.reservDesc = reservDesc;
	}
	
}
