package banjjok.command;

public class KPayCommand {
	// PAYMENT
	String bCode;
	String payWay;
	Integer payAmount;

	// Booking
	String bRequest;

	public KPayCommand(String bCode, String payWay, Integer payAmount) {
		super();
		this.bCode = bCode;
		this.payWay = payWay;
		this.payAmount = payAmount;
	}

	public String getbCode() {
		return bCode;
	}

	public void setbCode(String bCode) {
		this.bCode = bCode;
	}

	public String getPayWay() {
		return payWay;
	}

	public void setPayWay(String payWay) {
		this.payWay = payWay;
	}

	public Integer getPayAmount() {
		return payAmount;
	}

	public void setPayAmount(Integer payAmount) {
		this.payAmount = payAmount;
	}

	public String getbRequest() {
		return bRequest;
	}

	public void setbRequest(String bRequest) {
		this.bRequest = bRequest;
	}

}
