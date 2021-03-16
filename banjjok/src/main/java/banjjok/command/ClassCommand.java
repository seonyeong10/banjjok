package banjjok.command;

import javax.validation.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

public class ClassCommand {
	@NotEmpty(message = "Enter the Program Code")
	String pCode;
	@NotEmpty(message = "Enter the Class Code")
	String cCode;
	@NotEmpty(message = "Enter the Weight Grade of Class")
	String cWeight;
	@NotEmpty(message = "Enter the Class Color")
	String cColor;
	@NotEmpty(message = "Enter the Maximum Dogs of Class")
	String cCount;
	MultipartFile cPhoto;
	@NotEmpty(message = "Enter the Class Info")
	String cContent;
	
	
	public String getpCode() {
		return pCode;
	}
	public void setpCode(String pCode) {
		this.pCode = pCode;
	}
	public String getcCode() {
		return cCode;
	}
	public void setcCode(String cCode) {
		this.cCode = cCode;
	}
	public String getcWeight() {
		return cWeight;
	}
	public void setcWeight(String cWeight) {
		this.cWeight = cWeight;
	}
	public String getcColor() {
		return cColor;
	}
	public void setcColor(String cColor) {
		this.cColor = cColor;
	}
	public String getcCount() {
		return cCount;
	}
	public void setcCount(String cCount) {
		this.cCount = cCount;
	}
	public MultipartFile getcPhoto() {
		return cPhoto;
	}
	public void setcPhoto(MultipartFile cPhoto) {
		this.cPhoto = cPhoto;
	}
	public String getcContent() {
		return cContent;
	}
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	
	
}
