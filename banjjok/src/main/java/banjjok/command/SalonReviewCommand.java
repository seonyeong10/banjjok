package banjjok.command;

import javax.validation.constraints.NotBlank;

public class SalonReviewCommand {
	String serviceCode;
	Integer star;
	@NotBlank(message = "내용을 작성해주세요.")
	String review;
	String reservCode;

	public String getServiceCode() {
		return serviceCode;
	}

	public void setServiceCode(String serviceCode) {
		this.serviceCode = serviceCode;
	}

	public Integer getStar() {
		return star;
	}

	public void setStar(Integer star) {
		this.star = star;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getReservCode() {
		return reservCode;
	}

	public void setReservCode(String reservCode) {
		this.reservCode = reservCode;
	}

}
