package banjjok.command;

import javax.validation.constraints.NotEmpty;

public class SalonServCommand {
	String serviceCode;
	@NotEmpty(message = "카테고리를 선택하세요.")
	String serviceCateg;
	@NotEmpty(message = "서비스명을 입력하세요.")
	String serviceName;
	Long serviceFee;
	@NotEmpty(message = "소요시간를 선택하세요.")
	String serviceTime;
	@NotEmpty(message = "시술대상를 선택하세요.")
	String serviceTarget;
	String serviceOpt;
	@NotEmpty(message = "서비스 설명을 입력하세요.")
	String serviceDesc;

	public String getServiceCode() {
		return serviceCode;
	}

	public void setServiceCode(String serviceCode) {
		this.serviceCode = serviceCode;
	}

	public String getServiceCateg() {
		return serviceCateg;
	}

	public void setServiceCateg(String serviceCateg) {
		this.serviceCateg = serviceCateg;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public Long getServiceFee() {
		return serviceFee;
	}

	public void setServiceFee(Long serviceFee) {
		this.serviceFee = serviceFee;
	}

	public String getServiceTime() {
		return serviceTime;
	}

	public void setServiceTime(String serviceTime) {
		this.serviceTime = serviceTime;
	}

	public String getServiceTarget() {
		return serviceTarget;
	}

	public void setServiceTarget(String serviceTarget) {
		this.serviceTarget = serviceTarget;
	}

	public String getServiceOpt() {
		return serviceOpt;
	}

	public void setServiceOpt(String serviceOpt) {
		this.serviceOpt = serviceOpt;
	}

	public String getServiceDesc() {
		return serviceDesc;
	}

	public void setServiceDesc(String serviceDesc) {
		this.serviceDesc = serviceDesc;
	}

}
