package banjjok.domain;

public class SalonSDesnDTO {
	String serviceCode;
	String desnId;

	public SalonSDesnDTO() {
	}

	public SalonSDesnDTO(String serviceCode, String desnId) {
		super();
		this.serviceCode = serviceCode;
		this.desnId = desnId;
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

}
