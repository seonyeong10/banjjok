package banjjok.domain;

public class SalHeartDTO {
	String styleCode;
	String desnId;
	String memId;
	String heart;	// 1 : 하트 누름
	
	public SalHeartDTO() {
		super();
	}

	public SalHeartDTO(String styleCode, String desnId, String memId) {
		super();
		this.styleCode = styleCode;
		this.desnId = desnId;
		this.memId = memId;
	}
	
	public SalHeartDTO(String styleCode, String desnId, String memId, String heart) {
		super();
		this.styleCode = styleCode;
		this.desnId = desnId;
		this.memId = memId;
		this.heart = heart;
	}

	public String getStyleCode() {
		return styleCode;
	}

	public void setStyleCode(String styleCode) {
		this.styleCode = styleCode;
	}

	public String getDesnId() {
		return desnId;
	}

	public void setDesnId(String desnId) {
		this.desnId = desnId;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getHeart() {
		return heart;
	}

	public void setHeart(String heart) {
		this.heart = heart;
	}

}
