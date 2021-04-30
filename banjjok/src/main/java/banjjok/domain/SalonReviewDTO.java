package banjjok.domain;

import java.sql.Timestamp;

public class SalonReviewDTO {
	String memId;
	String serviceCode;
	Integer star;
	String review;
	Timestamp regDate;
	String step;
	String reservCode;
	
	String reservName;
	String serviceName;
	String serviceTarget;
	String desnUse;
	String petSize;
	String petName;
	String breed;
	String desnName;
	String memName;

	public SalonReviewDTO() {
		super();
	}

	public SalonReviewDTO(String reservCode) {
		super();
		this.reservCode = reservCode;
	}
	
	public SalonReviewDTO(String memId, String serviceCode, Integer star, String review, String step, String reservCode) {
		super();
		this.memId = memId;
		this.serviceCode = serviceCode;
		this.star = star;
		this.review = review;
		this.step = step;
		this.reservCode = reservCode;
	}

	public SalonReviewDTO(String memId, String serviceCode, Integer star, String review, Timestamp regDate,
			String step, String reservCode) {
		super();
		this.memId = memId;
		this.serviceCode = serviceCode;
		this.star = star;
		this.review = review;
		this.regDate = regDate;
		this.step = step;
		this.reservCode = reservCode;
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

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public String getStep() {
		return step;
	}

	public void setStep(String step) {
		this.step = step;
	}

	public String getReservCode() {
		return reservCode;
	}

	public void setReservCode(String reservCode) {
		this.reservCode = reservCode;
	}

	public String getReservName() {
		return reservName;
	}

	public void setReservName(String reservName) {
		this.reservName = reservName;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public String getServiceTarget() {
		return serviceTarget;
	}

	public void setServiceTarget(String serviceTarget) {
		this.serviceTarget = serviceTarget;
	}

	public String getDesnUse() {
		return desnUse;
	}

	public void setDesnUse(String desnUse) {
		this.desnUse = desnUse;
	}

	public String getPetSize() {
		return petSize;
	}

	public void setPetSize(String petSize) {
		this.petSize = petSize;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public String getDesnName() {
		return desnName;
	}

	public void setDesnName(String desnName) {
		this.desnName = desnName;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}
	
	
	
}
