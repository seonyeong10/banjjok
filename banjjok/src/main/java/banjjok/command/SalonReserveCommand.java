package banjjok.command;

public class SalonReserveCommand {
	String petId;
	String memId;
	String serviceCode;
	String desnId;
//	String reservDate;
	String year;
	String month;
	String date;
	String reservTime;
	String reservDesc;

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

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
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
