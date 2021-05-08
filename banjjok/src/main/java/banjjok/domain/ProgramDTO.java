package banjjok.domain;

public class ProgramDTO {
	String pCode;
	String pName;
	String pPrice;
	String pContent;
	String pTime;
	String pTeacher; // 담당 선생님
	String pTarget; // 교육 대상자
	String pImg; // 프로그램 대표 사진
	String pCateg; // 프로그램 종류
	String pStart; // 프로그램 시작일
	String pEnd; // 프로그램 종료일
	String regist;

	String tName;
	String tPhoto;

	public ProgramDTO() {
		super();
	}

	public ProgramDTO(String pCode, String pName, String pPrice, String pContent, String pTime, String pTeacher,
			String pTarget, String pImg, String pCateg, String pStart, String pEnd, String regist) {
		super();
		this.pCode = pCode;
		this.pName = pName;
		this.pPrice = pPrice;
		this.pContent = pContent;
		this.pTime = pTime;
		this.pTeacher = pTeacher;
		this.pTarget = pTarget;
		this.pImg = pImg;
		this.pCateg = pCateg;
		this.pStart = pStart;
		this.pEnd = pEnd;
		this.regist = regist;
	}

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

	public String getpImg() {
		return pImg;
	}

	public void setpImg(String pImg) {
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

	public String getRegist() {
		return regist;
	}

	public void setRegist(String regist) {
		this.regist = regist;
	}

	public String gettName() {
		return tName;
	}

	public void settName(String tName) {
		this.tName = tName;
	}

	public String gettPhoto() {
		return tPhoto;
	}

	public void settPhoto(String tPhoto) {
		this.tPhoto = tPhoto;
	}
	

}
