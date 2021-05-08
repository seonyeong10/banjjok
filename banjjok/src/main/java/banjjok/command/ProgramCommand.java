package banjjok.command;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

public class ProgramCommand {
	String pCode;
	@NotBlank(message = "프로그램 이름을 작성해주세요.")
	String pName;
	@NotBlank(message = "가격을 작성해주세요.")
	String pPrice;
	@NotBlank(message = "프로그램 설명을 작성해주세요.")
	String pContent;
	String pTime;
	@NotBlank(message = "담당자를 선택해주세요.")
	String pTeacher;	// 담당 선생님
	@NotBlank(message = "대상을 선택해주세요.")
	String pTarget;		// 교육 대상자
//	@NotBlank(message = "사진을 등록해주세요.")
	MultipartFile pImg;		// 프로그램 대표 사진
	@NotBlank(message = "카테고리를 선택해주세요.")
	String pCateg;		// 프로그램 종류
	@NotBlank(message = "시작일을 선택해주세요.")
	String pStart;		// 프로그램 시작일
	@NotBlank(message = "종료일을 작성해주세요.")
	String pEnd;		// 프로그램 종료일

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpPrice() {
		return pPrice;
	}

	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}

	public String getpContent() {
		return pContent;
	}

	public void setpContent(String pContent) {
		this.pContent = pContent;
	}

	public String getpTime() {
		return pTime;
	}

	public void setpTime(String pTime) {
		this.pTime = pTime;
	}

	public String getpTeacher() {
		return pTeacher;
	}

	public void setpTeacher(String pTeacher) {
		this.pTeacher = pTeacher;
	}

	public String getpTarget() {
		return pTarget;
	}

	public void setpTarget(String pTarget) {
		this.pTarget = pTarget;
	}

	public MultipartFile getpImg() {
		return pImg;
	}

	public void setpImg(MultipartFile pImg) {
		this.pImg = pImg;
	}

	public String getpCateg() {
		return pCateg;
	}

	public void setpCateg(String pCateg) {
		this.pCateg = pCateg;
	}

	public String getpStart() {
		return pStart;
	}

	public void setpStart(String pStart) {
		this.pStart = pStart;
	}

	public String getpEnd() {
		return pEnd;
	}

	public void setpEnd(String pEnd) {
		this.pEnd = pEnd;
	}
	
}
