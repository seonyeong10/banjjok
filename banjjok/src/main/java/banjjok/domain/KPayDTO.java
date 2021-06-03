package banjjok.domain;

public class KPayDTO {
	String bCode;
	String payWay;
	String payUse;	// P 결제완료, U 사용완료, C 취소
	Integer payAmount;
	String payDate;

	public KPayDTO() {
		super();
	}

	public KPayDTO(String bCode, String payWay, String payUse, Integer payAmount, String payDate) {
		super();
		this.bCode = bCode;
		this.payWay = payWay;
		this.payUse = payUse;
		this.payAmount = payAmount;
		this.payDate = payDate;
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

	public String getPayUse() {
		return payUse;
	}

	public void setPayUse(String payUse) {
		this.payUse = payUse;
	}

	public Integer getPayAmount() {
		return payAmount;
	}

	public void setPayAmount(Integer payAmount) {
		this.payAmount = payAmount;
	}

	public String getPayDate() {
		return payDate;
	}

	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}

}
