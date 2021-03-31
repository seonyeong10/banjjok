package banjjok.command;

public class ReservCommand {
	// booking list
	String bCode;
	String blDate;
	String blTime;
	String pCode;
	
	// booking
	String memId;
	String bRequest;

	// payment
	String payWay;
	String payUse;
	String payAmount;
	
	String pPrice;
	String petId;
	String petName;
	
	// cal
	String year;
	String month;
	String day;
	
	
	
	public String getPayWay() {
		return payWay;
	}
	public void setPayWay(String payWay) {
		this.payWay = payWay;
	}
	public String getPayUse() {
		return payUse;
	}
	public void setPayUse(String payUse) {
		this.payUse = payUse;
	}
	public String getPayAmount() {
		return payAmount;
	}
	public void setPayAmount(String payAmount) {
		this.payAmount = payAmount;
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

	
	public String getbCode() {
		return bCode;
	}
	public void setbCode(String bCode) {
		this.bCode = bCode;
	}
	public String getBlDate() {
		return blDate;
	}
	public void setBlDate(String blDate) {
		this.blDate = blDate;
	}
	public String getBlTime() {
		return blTime;
	}
	public void setBlTime(String blTime) {
		this.blTime = blTime;
	}
	public String getpCode() {
		return pCode;
	}
	public void setpCode(String pCode) {
		this.pCode = pCode;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getbRequest() {
		return bRequest;
	}
	public void setbRequest(String bRequest) {
		this.bRequest = bRequest;
	}
	public String getpPrice() {
		return pPrice;
	}
	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
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
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	
}
