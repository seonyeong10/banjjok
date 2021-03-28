package banjjok.domain;

import java.sql.Timestamp;

public class StyleDTO {
	String styleCode;
	String desnId;
	String styleCateg;
	String styleName;
	String styleLength;
	String styleCurly;
	String styleDesc;
	String styleImg;
	Timestamp regDate;
	String styleUse;	// 0 사용, 1 사용안함

	public StyleDTO() {
	}

//	public StyleDTO(String styleCode, String styleCateg, String styleName, String styleLength, String styleCurly, String styleDesc,
//			String styleImg) {
//		super();
//		this.styleCode = styleCode;
//		this.styleCateg = styleCateg;
//		this.styleName = styleName;
//		this.styleLength = styleLength;
//		this.styleCurly = styleCurly;
//		this.styleDesc = styleDesc;
//		this.styleImg = styleImg;
//	}

	public StyleDTO(String desnId, String styleCateg, String styleName, String styleLength, String styleCurly,
			String styleDesc, String styleImg) {
		super();
		this.desnId = desnId;
		this.styleCateg = styleCateg;
		this.styleName = styleName;
		this.styleLength = styleLength;
		this.styleCurly = styleCurly;
		this.styleDesc = styleDesc;
		this.styleImg = styleImg;
	}

	public StyleDTO(String styleCode, String desnId, String styleCateg, String styleName, String styleLength,
			String styleCurly, String styleDesc, String styleImg) {
		super();
		this.styleCode = styleCode;
		this.desnId = desnId;
		this.styleCateg = styleCateg;
		this.styleName = styleName;
		this.styleLength = styleLength;
		this.styleCurly = styleCurly;
		this.styleDesc = styleDesc;
		this.styleImg = styleImg;
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

	public String getStyleCateg() {
		return styleCateg;
	}

	public void setStyleCateg(String styleCateg) {
		this.styleCateg = styleCateg;
	}

	public String getStyleName() {
		return styleName;
	}

	public void setStyleName(String styleName) {
		this.styleName = styleName;
	}

	public String getStyleLength() {
		return styleLength;
	}

	public void setStyleLength(String styleLength) {
		this.styleLength = styleLength;
	}

	public String getStyleCurly() {
		return styleCurly;
	}

	public void setStyleCurly(String styleCurly) {
		this.styleCurly = styleCurly;
	}

	public String getStyleDesc() {
		return styleDesc;
	}

	public void setStyleDesc(String styleDesc) {
		this.styleDesc = styleDesc;
	}

	public String getStyleImg() {
		return styleImg;
	}

	public void setStyleImg(String styleImg) {
		this.styleImg = styleImg;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public String getStyleUse() {
		return styleUse;
	}

	public void setStyleUse(String styleUse) {
		this.styleUse = styleUse;
	}

}
